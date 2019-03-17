.class public Lcom/miui/gallery/ui/BabyAlbumDetailFragment;
.super Lcom/miui/gallery/ui/AlbumDetailFragmentBase;
.source "BabyAlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;,
        Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyOnScrollListener;,
        Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;
    }
.end annotation


# instance fields
.field private isStickyGridViewAtBottom:Z

.field private isStickyGridViewAtTop:Z

.field private mActionHelper:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

.field private mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

.field private mBabyAlbumPeopleServerId:Ljava/lang/String;

.field private mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

.field private mContentView:Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;

.field private mGotoPickHeaderBackgroundMaskView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIsNightMode:Z

.field private mMyRecommendationPhotoHelper:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

.field private mRecommendFacePhoto2ThisAlbumView:Landroid/view/View;

.field private mShowInPhotosTab:Z

.field private mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->isStickyGridViewAtTop:Z

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->isStickyGridViewAtBottom:Z

    .line 78
    new-instance v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActionHelper:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mMyRecommendationPhotoHelper:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    .line 505
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mIsNightMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActionHelper:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->showMenuDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->gotoPickHeaderBackground()V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/cloud/baby/BabyInfo;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumPeopleServerId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->getOriginalAlbumId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->isStickyGridViewAtBottom:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->isStickyGridViewAtTop:Z

    return v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->isStickyGridViewAtTop:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mGotoPickHeaderBackgroundMaskView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mRecommendFacePhoto2ThisAlbumView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mContentView:Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;

    return-object v0
.end method

.method private getOriginalAlbumId()J
    .locals 2

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mIsOtherShareAlbum:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumId:J

    .line 446
    invoke-static {v0, v1}, Lcom/miui/gallery/provider/ShareAlbumManager;->getOriginalAlbumId(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumId:J

    goto :goto_0
.end method

.method private gotoPickHeaderBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 263
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-class v2, Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pick-upper-bound"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const-string v1, "pick-need-id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 270
    return-void
.end method

.method private intialFaceHeader(Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;Lcom/miui/gallery/cloud/baby/BabyInfo;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "faceHeader"    # Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;
    .param p2, "babyInfo"    # Lcom/miui/gallery/cloud/baby/BabyInfo;
    .param p3, "thumbnailInfo"    # Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;
    .param p4, "sharerInfoStr"    # Ljava/lang/String;
    .param p5, "peopleId"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->getOriginalAlbumId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->setAlbumId(J)V

    .line 242
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    invoke-virtual {v0, p5}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->setPeopleServerId(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    iget-object v5, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mGotoPickHeaderBackgroundMaskView:Landroid/view/View;

    new-instance v6, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$3;

    invoke-direct {v6, p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$3;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V

    iget-boolean v7, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mIsOtherShareAlbum:Z

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    invoke-virtual/range {v0 .. v7}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->setFaceHeader(Lcom/miui/gallery/cloud/baby/BabyInfo;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;Ljava/lang/String;Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 260
    return-void
.end method

.method private setBabyAlbumBg(J)V
    .locals 5
    .param p1, "photoId"    # J

    .prologue
    .line 450
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    .line 454
    .local v0, "thumbnailInfo":Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;
    if-eqz v0, :cond_0

    .line 458
    new-instance v1, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$5;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$5;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;J)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 477
    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private showMenuDialog()V
    .locals 5

    .prologue
    .line 273
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v4, 0x7f0c007b

    invoke-virtual {v3, v4}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 274
    .local v1, "items":[Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    new-instance v4, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$4;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$4;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V

    .line 275
    invoke-virtual {v2, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 294
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 295
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 296
    return-void
.end method


# virtual methods
.method protected bridge synthetic getAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    .line 323
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    sget-object v1, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->BABY:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->setAlbumType(Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    return-object v0
.end method

.method protected getCreatorIdByPosition(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 426
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->getCreatorId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    const-string v0, "alias_create_time DESC "

    return-object v0
.end method

.method protected getLayoutSource()I
    .locals 1

    .prologue
    .line 300
    const v0, 0x7f040026

    return v0
.end method

.method protected getMediaIdByPosition(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 431
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "baby"

    return-object v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lcom/miui/gallery/widget/SortByHeader$SortBy;->DATE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->getUri(Lcom/miui/gallery/widget/SortByHeader$SortBy;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected mayDoAdditionalWork(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "o"    # Landroid/database/Cursor;

    .prologue
    .line 305
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 311
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 315
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->firstBindHeaderPic(Landroid/database/Cursor;)V

    .line 316
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mMyRecommendationPhotoHelper:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    invoke-static {v0, p1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->access$1300(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;Landroid/database/Cursor;)V

    goto :goto_0

    .line 313
    :cond_2
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->move(I)Z

    goto :goto_1
.end method

.method protected needEnableAutoUpload()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 380
    sparse-switch p1, :sswitch_data_0

    .line 420
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 382
    :sswitch_0
    if-eqz p3, :cond_0

    .line 385
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 386
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "baby-info"

    .line 387
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/baby/BabyInfo;

    .line 388
    .local v0, "babyInfo":Lcom/miui/gallery/cloud/baby/BabyInfo;
    new-instance v3, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->getOriginalAlbumId()J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mIsOtherShareAlbum:Z

    const-string/jumbo v7, "thumbnail_info_of_baby"

    .line 389
    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;-><init>(JZLjava/lang/String;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    .line 390
    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    iget-object v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    invoke-virtual {v3, v0, v4}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->resetBabyInfoAndThumbnailInfo(Lcom/miui/gallery/cloud/baby/BabyInfo;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;)V

    goto :goto_0

    .line 395
    .end local v0    # "babyInfo":Lcom/miui/gallery/cloud/baby/BabyInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :sswitch_1
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 396
    const-string v3, "pick-result-data"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 397
    .local v2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 400
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->setBabyAlbumBg(J)V

    .line 401
    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mGotoPickHeaderBackgroundMaskView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 407
    .end local v2    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :sswitch_2
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 408
    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mMyRecommendationPhotoHelper:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    invoke-static {v3, p3}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->access$1400(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;Landroid/content/Intent;)V

    goto :goto_0

    .line 413
    :sswitch_3
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 414
    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mMyRecommendationPhotoHelper:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    invoke-static {v3, p3}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->access$1500(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;Landroid/content/Intent;)V

    goto :goto_0

    .line 380
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0xe -> :sswitch_3
        0x12 -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 330
    iget-object v2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v2}, Lcom/miui/gallery/util/BuildUtil;->isMiuiSdkGte15(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f13000c

    .line 332
    .local v0, "menuResId":I
    :goto_0
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 333
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->supportShare()Z

    move-result v2

    if-nez v2, :cond_0

    .line 334
    const v2, 0x7f1202ec

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 335
    .local v1, "shareItem":Landroid/view/MenuItem;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 337
    .end local v1    # "shareItem":Landroid/view/MenuItem;
    :cond_0
    return-void

    .line 330
    .end local v0    # "menuResId":I
    :cond_1
    const v0, 0x7f130002

    goto :goto_0
.end method

.method protected onEnterActionMode()V
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mShowInPhotosTab:Z

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->showImageSelectionTipDialogIfNecessary(Landroid/app/Activity;)V

    .line 377
    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 168
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v9

    .line 169
    .local v9, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mIsNightMode:Z

    .line 170
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 171
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "attributes"

    invoke-virtual {v8, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 172
    .local v6, "attributes":J
    const-wide/16 v0, 0x4

    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    move v0, v10

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mShowInPhotosTab:Z

    .line 173
    const v0, 0x7f1200c3

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mContentView:Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;

    .line 174
    const v0, 0x7f1200d0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mRecommendFacePhoto2ThisAlbumView:Landroid/view/View;

    .line 175
    const-string v0, "people_id"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumPeopleServerId:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->getAdapter()Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    const v0, 0x7f1200c5

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mGotoPickHeaderBackgroundMaskView:Landroid/view/View;

    .line 179
    new-instance v0, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->getOriginalAlbumId()J

    move-result-wide v2

    iget-boolean v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mIsOtherShareAlbum:Z

    const-string/jumbo v4, "thumbnail_info_of_baby"

    .line 180
    invoke-virtual {v8, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;-><init>(JZLjava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    .line 181
    const-string v0, "baby_info"

    .line 182
    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v0}, Lcom/miui/gallery/cloud/baby/BabyInfo;->fromJSON(Ljava/lang/String;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

    .line 183
    const v0, 0x7f1200c4

    .line 185
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;

    iget-object v2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyInfo:Lcom/miui/gallery/cloud/baby/BabyInfo;

    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    const-string v0, "baby_sharer_info"

    .line 188
    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumPeopleServerId:Ljava/lang/String;

    move-object v0, p0

    .line 183
    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->intialFaceHeader(Lcom/miui/gallery/ui/BabyAlbumDetailFaceHeaderItem;Lcom/miui/gallery/cloud/baby/BabyInfo;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumDetailGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    new-instance v1, Lcom/nostra13/universalimageloader/core/listener/PauseOnScrollListener;

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyOnScrollListener;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyOnScrollListener;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V

    invoke-direct {v1, v2, v11, v10, v3}, Lcom/nostra13/universalimageloader/core/listener/PauseOnScrollListener;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZLandroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 191
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mContentView:Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;

    new-instance v1, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$1;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->setInnerScollerMessager(Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView$InnerScollerStateChangedMessager;)V

    .line 228
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActionHelper:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->access$800(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;)Landroid/view/View;

    .line 229
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActionHelper:Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->access$200(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;)V

    .line 230
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mContentView:Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;

    new-instance v1, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$2;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView;->post(Ljava/lang/Runnable;)Z

    .line 236
    return-object v9

    :cond_0
    move v0, v11

    .line 172
    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v11, 0x1

    .line 346
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 368
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragmentBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 348
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    iget-boolean v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mIsOtherShareAlbum:Z

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->gotoBabyInfoSettingPage(Z)V

    .line 349
    const-string v0, "baby"

    const-string v1, "baby_edit_baby_info"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v11

    .line 351
    goto :goto_0

    .line 354
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mBabyAlbumAdapter:Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/BabyAlbumDetailTimeLineAdapter;->getFaceImageOfFaceHeaderItem()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 355
    .local v5, "icon":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 356
    .local v10, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-boolean v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mIsOtherShareAlbum:Z

    iget-wide v2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumId:J

    iget-object v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumName:Ljava/lang/String;

    const-string v6, "people_id"

    .line 357
    invoke-virtual {v10, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "thumbnail_info_of_baby"

    .line 358
    invoke-virtual {v10, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "baby_info"

    .line 359
    invoke-virtual {v10, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "baby_sharer_info"

    .line 360
    invoke-virtual {v10, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 356
    invoke-static/range {v0 .. v9}, Lcom/miui/gallery/util/IntentUtil;->createShortCutForBabyAlbum(Landroid/content/Context;ZJLjava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v2, 0x7f0c04c7

    .line 362
    invoke-virtual {v1, v2}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 363
    const-string v0, "baby"

    const-string v1, "baby_send_shortcut"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v11

    .line 365
    goto :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x7f1202fa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
