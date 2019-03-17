.class public Lcom/miui/gallery/ui/AlbumPageFragment;
.super Lcom/miui/gallery/ui/BaseAlbumPageFragment;
.source "AlbumPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/AIAlbumDisplayHelper$DisplayStatusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;,
        Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;,
        Lcom/miui/gallery/ui/AlbumPageFragment$OnCreateNewAlbumListener;
    }
.end annotation


# instance fields
.field private mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

.field private mAlbumPageHeaderController:Lcom/miui/gallery/ui/AlbumPageHeaderController;

.field private mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;

.field private mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

.field private mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

.field private mCreateAlbumButton:Landroid/view/View;

.field private mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

.field private mHasEnterPrivateEntry:Z

.field private mLoaderInitialized:Z

.field private mNewlyCreatedAlbumId:J

.field private mOnAlbumCreatedListener:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

.field private mPendingDisplayCreateAlbum:Z

.field private mPendingLoadExtraInfo:Z

.field private mPrivateEntryTriggerListener:Lcom/miui/gallery/widget/TwoStageDrawer$TriggerListener;

.field private mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

.field private mSearchStatusObserver:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;

.field private mShowAIAlbum:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mShowAIAlbum:Z

    .line 106
    new-instance v0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;-><init>(Lcom/miui/gallery/ui/AIAlbumDisplayHelper$DisplayStatusCallback;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchStatusObserver:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;

    .line 238
    new-instance v0, Lcom/miui/gallery/ui/AlbumPageFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/AlbumPageFragment$3;-><init>(Lcom/miui/gallery/ui/AlbumPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mPrivateEntryTriggerListener:Lcom/miui/gallery/widget/TwoStageDrawer$TriggerListener;

    .line 688
    new-instance v0, Lcom/miui/gallery/ui/AlbumPageFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/AlbumPageFragment$5;-><init>(Lcom/miui/gallery/ui/AlbumPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mOnAlbumCreatedListener:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

    .line 701
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/AlbumPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->addHeaderAlbumUI()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/AlbumPageFragment;Ljava/util/ArrayList;Landroid/support/v7/util/SortedList;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Landroid/support/v7/util/SortedList;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/AlbumPageFragment;->scrollToNewlyCreatedAlbum(Ljava/util/ArrayList;Landroid/support/v7/util/SortedList;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/ui/AlbumPageFragment;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumPageFragment;->loaderId2Name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/ui/AlbumPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->startToLoadAlbumExtraInfo()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/gallery/ui/AlbumPageFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getRecyclerPaddingBottom()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/ui/AlbumPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mShowAIAlbum:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/miui/gallery/ui/AlbumPageFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mPendingDisplayCreateAlbum:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/miui/gallery/ui/AlbumPageFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;
    .param p1, "x1"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mNewlyCreatedAlbumId:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/widget/TwoStageDrawer;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mOnAlbumCreatedListener:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/AlbumPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mHasEnterPrivateEntry:Z

    return v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/ui/AlbumPageFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mHasEnterPrivateEntry:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/AlbumPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->enterPrivateEntry()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/AlbumPageFragment;ZZ)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/AlbumPageFragment;->getAlbumQueryUri(ZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/AlbumPageFragment;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumPageFragment;->getAlbumQuerySelection(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/AlbumPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mPendingLoadExtraInfo:Z

    return v0
.end method

.method static synthetic access$902(Lcom/miui/gallery/ui/AlbumPageFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mPendingLoadExtraInfo:Z

    return p1
.end method

.method private addHeaderAlbumUI()V
    .locals 2

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mShowAIAlbum:Z

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageHeaderController:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/AlbumPageHeaderController;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageHeaderController:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->getHeadersCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageHeaderController:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->addHeaderView(Landroid/view/View;)V

    .line 316
    :cond_1
    :goto_0
    return-void

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->getHeadersCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageHeaderController:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method private doEnterPrivateEntry()V
    .locals 2

    .prologue
    .line 261
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 262
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 263
    invoke-static {p0}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->startAuthenticatePrivacyPassword(Landroid/app/Fragment;)V

    .line 265
    :cond_0
    return-void
.end method

.method private enterPrivateEntry()V
    .locals 3

    .prologue
    .line 254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 255
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "check_login_and_sync"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    const-string v1, "cloud_guide_source"

    sget-object v2, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;->SECRET:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 257
    invoke-static {p0, v0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->checkLoginAndSyncState(Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 258
    return-void
.end method

.method private getAlbumQuerySelection(Z)Ljava/lang/String;
    .locals 1
    .param p1, "forOtherAlbum"    # Z

    .prologue
    .line 568
    if-eqz p1, :cond_0

    .line 569
    const-string v0, "classification = 1"

    .line 571
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "classification = 0"

    goto :goto_0
.end method

.method private getAlbumQueryUri(ZZ)Landroid/net/Uri;
    .locals 5
    .param p1, "forOtherAlbum"    # Z
    .param p2, "firstTime"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 554
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "join_face"

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mShowAIAlbum:Z

    if-nez v0, :cond_0

    .line 556
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 555
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "join_video"

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    move v0, v1

    .line 558
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "join_share"

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    move v0, v1

    .line 559
    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "join_recent"

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    move v0, v1

    .line 560
    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "join_favorites"

    if-nez p1, :cond_4

    if-nez p2, :cond_4

    move v0, v1

    .line 561
    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "exclude_empty_album"

    const-string/jumbo v4, "true"

    .line 562
    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "fill_covers"

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    .line 563
    :goto_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 564
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 556
    goto :goto_0

    :cond_1
    move v0, v2

    .line 555
    goto :goto_1

    :cond_2
    move v0, v2

    .line 558
    goto :goto_2

    :cond_3
    move v0, v2

    .line 559
    goto :goto_3

    :cond_4
    move v0, v2

    .line 560
    goto :goto_4

    :cond_5
    move v1, v2

    .line 562
    goto :goto_5
.end method

.method private getRecyclerPaddingBottom()I
    .locals 3

    .prologue
    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, "fabHeight":I
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mCreateAlbumButton:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mCreateAlbumButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 544
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mCreateAlbumButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 546
    :cond_0
    if-lez v0, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 549
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loaderId2Name(I)Ljava/lang/String;
    .locals 1
    .param p1, "loaderId"    # I

    .prologue
    .line 674
    packed-switch p1, :pswitch_data_0

    .line 684
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 676
    :pswitch_0
    const-string v0, "albums"

    goto :goto_0

    .line 678
    :pswitch_1
    const-string/jumbo v0, "share albums"

    goto :goto_0

    .line 680
    :pswitch_2
    const-string v0, "people face cover"

    goto :goto_0

    .line 682
    :pswitch_3
    const-string v0, "other albums"

    goto :goto_0

    .line 674
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onVisibleToUser()V
    .locals 1

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->statAlbumEmpty()V

    .line 594
    :cond_0
    return-void
.end method

.method private scrollToNewlyCreatedAlbum(Ljava/util/ArrayList;Landroid/support/v7/util/SortedList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/Album;",
            ">;",
            "Landroid/support/v7/util/SortedList",
            "<",
            "Lcom/miui/gallery/model/Album;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 517
    .local p1, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/Album;>;"
    .local p2, "adapterData":Landroid/support/v7/util/SortedList;, "Landroid/support/v7/util/SortedList<Lcom/miui/gallery/model/Album;>;"
    iget-boolean v4, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mPendingDisplayCreateAlbum:Z

    if-eqz v4, :cond_1

    .line 518
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mPendingDisplayCreateAlbum:Z

    .line 519
    if-eqz p1, :cond_1

    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 521
    .local v2, "start":J
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/model/Album;

    .line 522
    .local v0, "album":Lcom/miui/gallery/model/Album;
    invoke-virtual {v0}, Lcom/miui/gallery/model/Album;->getId()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mNewlyCreatedAlbumId:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 523
    invoke-virtual {p2, v0}, Landroid/support/v7/util/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 524
    .local v1, "pos":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 525
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    invoke-virtual {v5}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->getHeadersCount()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->smoothScrollToPosition(I)V

    .line 535
    .end local v0    # "album":Lcom/miui/gallery/model/Album;
    .end local v1    # "pos":I
    .end local v2    # "start":J
    :cond_1
    return-void
.end method

.method private startToLoadAlbumExtraInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 615
    const-string v0, "AlbumPageFragment"

    const-string/jumbo v1, "startToLoadAlbumExtraInfo"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 617
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 618
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 619
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mShowAIAlbum:Z

    if-nez v0, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 622
    :cond_0
    return-void
.end method

.method private startToLoadAlbums()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 603
    const-string v1, "AlbumPageFragment"

    const-string/jumbo v2, "startToLoadAlbums"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;

    if-nez v1, :cond_0

    .line 612
    :goto_0
    return-void

    .line 607
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 608
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "first_time_load"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 609
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 610
    iput-boolean v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mLoaderInitialized:Z

    .line 611
    iput-boolean v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mPendingLoadExtraInfo:Z

    goto :goto_0
.end method

.method private statAlbumEmpty()V
    .locals 3

    .prologue
    .line 597
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 598
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "login"

    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const-string v1, "album"

    const-string v2, "album_empty"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 600
    return-void

    .line 598
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    const-string v0, "album"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 283
    if-ne p2, v2, :cond_3

    .line 284
    sparse-switch p1, :sswitch_data_0

    .line 302
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 303
    :goto_1
    return-void

    .line 286
    :sswitch_0
    const-string v1, "AlbumPageFragment"

    const-string v2, "onActivityResult"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/IntentUtil;->enterPrivateAlbum(Landroid/content/Context;)V

    goto :goto_0

    .line 290
    :sswitch_1
    const-string v1, "check_login_and_sync"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 291
    .local v0, "checkFor":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 292
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 294
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->doEnterPrivateEntry()V

    goto :goto_0

    .line 300
    .end local v0    # "checkFor":I
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mHasEnterPrivateEntry:Z

    goto :goto_0

    .line 284
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_1
        0x24 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mLoaderInitialized:Z

    .line 113
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 224
    if-nez p3, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p3

    .line 227
    check-cast v0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;

    .line 228
    .local v0, "info":Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;
    iget v1, v0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;->position:I

    .line 229
    .local v1, "position":I
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    invoke-virtual {v2, v1}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->isHeaderPosition(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    invoke-virtual {v2, v1}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->isFooterPosition(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    invoke-virtual {v2, v1}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;->getWrappedAdapterPosition(I)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/miui/gallery/ui/AlbumPageFragment;->setContextMenuItems(Landroid/view/ContextMenu;I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageHeaderController:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageHeaderController:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->onDestroy()V

    .line 185
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->onDestroy()V

    .line 186
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 176
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->getInstance()Lcom/miui/gallery/ui/AIAlbumDisplayHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchStatusObserver:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->unregisterAIAlbumDisplayStatusObserver(Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;)V

    .line 177
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->onDestroyView()V

    .line 178
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 118
    const v5, 0x7f040013

    invoke-virtual {p1, v5, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 119
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f12009e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    iput-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    .line 120
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    invoke-virtual {v5}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->getRecycler()Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iput-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .line 121
    new-instance v5, Lcom/miui/gallery/adapter/AlbumPageAdapter;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v5, v6}, Lcom/miui/gallery/adapter/AlbumPageAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    .line 122
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    new-instance v6, Lcom/miui/gallery/ui/AlbumPageFragment$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/ui/AlbumPageFragment$1;-><init>(Lcom/miui/gallery/ui/AlbumPageFragment;)V

    invoke-virtual {v5, v6}, Lcom/miui/gallery/adapter/AlbumPageAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 128
    new-instance v5, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapter:Lcom/miui/gallery/adapter/AlbumPageAdapter;

    invoke-direct {v5, v6}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;-><init>(Lcom/miui/gallery/adapter/AlbumPageAdapter;)V

    iput-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    .line 129
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    new-instance v6, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 130
    new-instance v0, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f020265

    const v7, 0x7f0201af

    iget-object v8, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;-><init>(Landroid/content/Context;IILcom/miui/gallery/widget/DividerTypeProvider;)V

    .line 132
    .local v0, "decoration":Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b007d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 133
    .local v1, "itemDividerPaddingStart":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v5}, Lcom/miui/gallery/widget/recyclerview/SectionedDividerItemDecoration;->setItemDividerPadding(Landroid/graphics/Rect;)V

    .line 134
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    invoke-virtual {v5, v0}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 135
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    invoke-virtual {v5, v10}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 136
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumRecyclerView:Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    invoke-virtual {v5, v6}, Lcom/miui/gallery/widget/recyclerview/ExtendedRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 138
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageAdapterWrapper:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPageAdapterWrapper;

    invoke-virtual {v5, v6}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setOnItemClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;)V

    .line 140
    new-instance v5, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-direct {v5, p0, v10}, Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;-><init>(Lcom/miui/gallery/ui/AlbumPageFragment;Lcom/miui/gallery/ui/AlbumPageFragment$1;)V

    iput-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;

    .line 141
    const v5, 0x7f12009f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mCreateAlbumButton:Landroid/view/View;

    .line 142
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mCreateAlbumButton:Landroid/view/View;

    new-instance v6, Lcom/miui/gallery/ui/AlbumPageFragment$OnCreateNewAlbumListener;

    invoke-direct {v6, p0, v10}, Lcom/miui/gallery/ui/AlbumPageFragment$OnCreateNewAlbumListener;-><init>(Lcom/miui/gallery/ui/AlbumPageFragment;Lcom/miui/gallery/ui/AlbumPageFragment$1;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v5, v4

    .line 144
    check-cast v5, Lcom/miui/gallery/widget/TwoStageDrawer;

    iput-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    .line 145
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mPrivateEntryTriggerListener:Lcom/miui/gallery/widget/TwoStageDrawer$TriggerListener;

    invoke-virtual {v5, v6}, Lcom/miui/gallery/widget/TwoStageDrawer;->setTriggerListener(Lcom/miui/gallery/widget/TwoStageDrawer$TriggerListener;)V

    .line 147
    const v5, 0x7f12009d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/search/widget/BannerSearchBar;

    iput-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    .line 148
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->getInstance()Lcom/miui/gallery/ui/AIAlbumDisplayHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchStatusObserver:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;

    invoke-virtual {v5, v6}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->registerAIAlbumDisplayStatusObserver(Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 149
    .local v3, "status":Landroid/util/SparseBooleanArray;
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mShowAIAlbum:Z

    .line 150
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    .line 151
    .local v2, "showSearchBar":Z
    const-string v5, "AlbumPageFragment"

    const-string v6, "Init search bar: %s, ai album: %s"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v8, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mShowAIAlbum:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    if-eqz v2, :cond_2

    .line 153
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    invoke-virtual {v5, v9}, Lcom/miui/gallery/search/widget/BannerSearchBar;->setVisibility(I)V

    .line 154
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    if-nez v5, :cond_0

    .line 155
    new-instance v5, Lcom/miui/gallery/ui/TopSearchBarController;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    const-string v7, "from_album_page"

    invoke-direct {v5, p0, v6, v7}, Lcom/miui/gallery/ui/TopSearchBarController;-><init>(Lmiui/app/Fragment;Lcom/miui/gallery/search/widget/BannerSearchBar;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    .line 158
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    new-instance v6, Lcom/miui/gallery/ui/AlbumPageFragment$2;

    invoke-direct {v6, p0}, Lcom/miui/gallery/ui/AlbumPageFragment$2;-><init>(Lcom/miui/gallery/ui/AlbumPageFragment;)V

    invoke-virtual {v5, v6}, Lcom/miui/gallery/widget/TwoStageDrawer;->post(Ljava/lang/Runnable;)Z

    .line 168
    :goto_0
    iget-boolean v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mUserFirstVisible:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mLoaderInitialized:Z

    if-nez v5, :cond_1

    .line 169
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->startToLoadAlbums()V

    .line 171
    :cond_1
    return-object v4

    .line 165
    :cond_2
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/miui/gallery/search/widget/BannerSearchBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->onPause()V

    .line 217
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TopSearchBarController;->onPause()V

    .line 220
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->onResume()V

    .line 204
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TopSearchBarController;->onResume()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageHeaderController:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPageHeaderController:Lcom/miui/gallery/ui/AlbumPageHeaderController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumPageHeaderController;->onResume()V

    .line 210
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->onStart()V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mHasEnterPrivateEntry:Z

    .line 271
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->onVisibleToUser()V

    .line 274
    :cond_0
    return-void
.end method

.method public onStatusChanged(Landroid/util/SparseBooleanArray;)V
    .locals 8
    .param p1, "changedStatus"    # Landroid/util/SparseBooleanArray;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 632
    if-nez p1, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_3

    .line 635
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 636
    .local v0, "showSearchBar":Z
    const-string v1, "AlbumPageFragment"

    const-string v2, "New search bar status %s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 637
    if-eqz v0, :cond_4

    .line 638
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    if-nez v1, :cond_2

    .line 639
    new-instance v1, Lcom/miui/gallery/ui/TopSearchBarController;

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    const-string v3, "from_album_page"

    invoke-direct {v1, p0, v2, v3}, Lcom/miui/gallery/ui/TopSearchBarController;-><init>(Lmiui/app/Fragment;Lcom/miui/gallery/search/widget/BannerSearchBar;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    .line 642
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/search/widget/BannerSearchBar;->setVisibility(I)V

    .line 643
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/TopSearchBarController;->onResume()V

    .line 644
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    new-instance v2, Lcom/miui/gallery/ui/AlbumPageFragment$4;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/AlbumPageFragment$4;-><init>(Lcom/miui/gallery/ui/AlbumPageFragment;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/search/widget/BannerSearchBar;->post(Ljava/lang/Runnable;)Z

    .line 660
    .end local v0    # "showSearchBar":Z
    :cond_3
    :goto_1
    invoke-virtual {p1, v5}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 661
    invoke-virtual {p1, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mShowAIAlbum:Z

    .line 662
    const-string v1, "AlbumPageFragment"

    const-string v2, "New ai album status %s"

    iget-boolean v3, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mShowAIAlbum:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 663
    iget-boolean v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mShowAIAlbum:Z

    if-eqz v1, :cond_6

    .line 664
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 668
    :goto_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 669
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-virtual {v1, v4, v7, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 653
    .restart local v0    # "showSearchBar":Z
    :cond_4
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    if-eqz v1, :cond_5

    .line 654
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/TopSearchBarController;->onPause()V

    .line 656
    :cond_5
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/miui/gallery/search/widget/BannerSearchBar;->setVisibility(I)V

    goto :goto_1

    .line 666
    .end local v0    # "showSearchBar":Z
    :cond_6
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mAlbumPagePhotoLoaderCallback:Lcom/miui/gallery/ui/AlbumPageFragment$AlbumPagePhotoLoaderCallback;

    invoke-virtual {v1, v6, v7, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_2
.end method

.method protected recordPageByDefault()Z
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x0

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 577
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseAlbumPageFragment;->setUserVisibleHint(Z)V

    .line 578
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment;->mLoaderInitialized:Z

    if-nez v0, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->startToLoadAlbums()V

    .line 582
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumPageFragment;->onVisibleToUser()V

    .line 584
    :cond_1
    return-void
.end method
