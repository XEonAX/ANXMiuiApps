.class public Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
.super Lcom/miui/gallery/ui/BaseMediaFragment;
.source "StoryAlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;,
        Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;,
        Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;,
        Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;,
        Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;,
        Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;
    }
.end annotation


# instance fields
.field private mActionBarHelper:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

.field private mAdapter:Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

.field private mAdapterWrapper:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;

.field private mCancelDownloadListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCard:Lcom/miui/gallery/card/Card;

.field private mCardDescription:Landroid/widget/TextView;

.field private mCardDownloadDialog:Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

.field private mCardId:J

.field private mCardTitle:Landroid/widget/TextView;

.field private mCheckDownloadFilesFuture:Lcom/miui/gallery/threadpool/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mChoiceModeListener:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

.field private mDowloadCallback:Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$CallBack;

.field private mDowloadResultFuture:Lcom/miui/gallery/threadpool/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDownloadPendings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

.field private mFlexboxLayoutHeight:I

.field private mFlexboxLayoutManager:Lcom/google/android/flexbox/FlexboxLayoutManager;

.field private mHeaderView:Landroid/view/View;

.field private mImageInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/model/MediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInActionMode:Z

.field private mIsNightMode:Z

.field private mIsPlayIconScrollStateEnable:Z

.field private mIsShowTranslucentStatusBar:Z

.field private mListViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mParseFileMetaValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoLoaderCallback:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;

.field private mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

.field private mResults:[Landroid/net/Uri;

.field private mSelectedPhotoSha1s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSlideShowHeaderView:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;-><init>()V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mIsPlayIconScrollStateEnable:Z

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mParseFileMetaValues:Ljava/util/ArrayList;

    .line 455
    new-instance v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$3;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 559
    new-instance v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mChoiceModeListener:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    .line 1073
    new-instance v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$5;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1085
    new-instance v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$6;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$6;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCancelDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1125
    new-instance v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$8;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$8;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDowloadCallback:Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$CallBack;

    .line 1153
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSlideShowHeaderView:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/threadpool/Future;)Lcom/miui/gallery/threadpool/Future;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Lcom/miui/gallery/threadpool/Future;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCheckDownloadFilesFuture:Lcom/miui/gallery/threadpool/Future;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mParseFileMetaValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->checkDowloadPendingFiles()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->showNetworkMeteredDialog()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->startDownload()V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->gotoPhotoMovie()V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mFlexboxLayoutHeight:I

    return v0
.end method

.method static synthetic access$2100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->updateFlexboxLayoutParamHelper()V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getProjection()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->updateImages(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->parseCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mIsInActionMode:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mIsInActionMode:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->updateSlideHeaderPlayStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mAdapterWrapper:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActionBarHelper:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mListViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSelectedPhotoSha1s:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mPhotoLoaderCallback:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/Card;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mAdapter:Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mIsShowTranslucentStatusBar:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mIsShowTranslucentStatusBar:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->saveAndNofity()V

    return-void
.end method

.method static synthetic access$5700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getSelection()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mIsNightMode:Z

    return v0
.end method

.method static synthetic access$6600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$7302(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mIsPlayIconScrollStateEnable:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCardDownloadDialog:Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    return-object v0
.end method

.method static synthetic access$7402(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;)Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCardDownloadDialog:Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    return-object p1
.end method

.method static synthetic access$7500(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->showConfirmDialog(Z)V

    return-void
.end method

.method static synthetic access$7800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/picker/uri/Downloader;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    return-object v0
.end method

.method static synthetic access$7802(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/picker/uri/Downloader;)Lcom/miui/gallery/picker/uri/Downloader;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Lcom/miui/gallery/picker/uri/Downloader;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    return-object p1
.end method

.method static synthetic access$7902(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/threadpool/Future;)Lcom/miui/gallery/threadpool/Future;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
    .param p1, "x1"    # Lcom/miui/gallery/threadpool/Future;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDowloadResultFuture:Lcom/miui/gallery/threadpool/Future;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getOrder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)[Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mResults:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method private checkDowloadPendingFiles()V
    .locals 11

    .prologue
    .line 269
    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 270
    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 272
    :cond_0
    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mParseFileMetaValues:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/Uri;

    iput-object v6, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mResults:[Landroid/net/Uri;

    .line 273
    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mParseFileMetaValues:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;

    .line 274
    .local v3, "parseFile":Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;
    iget v4, v3, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;->position:I

    .line 275
    .local v4, "position":I
    iget-object v2, v3, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;->originFilePath:Ljava/lang/String;

    .line 276
    .local v2, "originFilePath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 277
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 279
    iget-object v7, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mResults:[Landroid/net/Uri;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_0

    .line 284
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    iget-object v5, v3, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;->thumnailFilePath:Ljava/lang/String;

    .line 285
    .local v5, "thumbnailFilePath":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 286
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 288
    iget-object v7, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mResults:[Landroid/net/Uri;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_0

    .line 293
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    iget-object v0, v3, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;->downloadUri:Landroid/net/Uri;

    .line 294
    .local v0, "downloadUri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    new-instance v8, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    sget-object v9, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    const/4 v10, 0x0

    invoke-direct {v8, v0, v9, v10, v4}, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;-><init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;II)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    .end local v0    # "downloadUri":Landroid/net/Uri;
    .end local v2    # "originFilePath":Ljava/lang/String;
    .end local v3    # "parseFile":Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;
    .end local v4    # "position":I
    .end local v5    # "thumbnailFilePath":Ljava/lang/String;
    :cond_3
    const-string v6, "StoryAlbumFragment"

    const-string v7, "check dowload file end\uff0cand need download file count: %d ."

    iget-object v8, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    return-void
.end method

.method private getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    const-string v0, "alias_create_time DESC "

    return-object v0
.end method

.method private getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 535
    sget-object v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private getSelection()Ljava/lang/String;
    .locals 6

    .prologue
    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(localGroupId!=-1000) AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%s IN (\'%s\')"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "sha1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\',\'"

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSelectedPhotoSha1s:Ljava/util/Set;

    .line 548
    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTopNImages(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .param p2, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/model/MediaInfo;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/model/MediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, "imageInfos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/model/MediaInfo;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez p2, :cond_0

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 332
    .local v0, "allMediaInfos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/model/MediaInfo;>;"
    new-instance v2, Lcom/miui/gallery/card/model/MediaInfoScoreComparator;

    invoke-direct {v2}, Lcom/miui/gallery/card/model/MediaInfoScoreComparator;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 333
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 334
    .local v1, "topNMedias":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/model/MediaInfo;>;"
    new-instance v2, Lcom/miui/gallery/card/model/MediaInfoTimeComparator;

    invoke-direct {v2}, Lcom/miui/gallery/card/model/MediaInfoTimeComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 337
    .end local v0    # "allMediaInfos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/model/MediaInfo;>;"
    .end local v1    # "topNMedias":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/model/MediaInfo;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 539
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "remove_duplicate_items"

    const/4 v2, 0x1

    .line 542
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 540
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private gotoPhotoMovie()V
    .locals 7

    .prologue
    .line 300
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mImageInfos:Ljava/util/List;

    const/16 v2, 0x14

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getTopNImages(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCardId:J

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-static {v4}, Lcom/miui/gallery/card/CardUtil;->getMovieTemplateFromCard(Lcom/miui/gallery/card/Card;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    .line 301
    invoke-virtual {v5}, Lcom/miui/gallery/card/Card;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v6}, Lcom/miui/gallery/card/Card;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 300
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/IntentUtil;->startPhotoMovie(Landroid/app/Activity;Ljava/util/List;JILjava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->recordSlideShowHeaderClick()V

    .line 303
    return-void
.end method

.method private initHeaderView()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f12002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCardTitle:Landroid/widget/TextView;

    .line 218
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f1200f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCardDescription:Landroid/widget/TextView;

    .line 219
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f1202a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSlideShowHeaderView:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    .line 220
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSlideShowHeaderView:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    new-instance v1, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$2;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    return-void
.end method

.method private parseCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 409
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mParseFileMetaValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mParseFileMetaValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mParseFileMetaValues:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ParseFileMetaValue;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    :cond_1
    return-void
.end method

.method private recordSlideShowHeaderClick()V
    .locals 3

    .prologue
    .line 346
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 347
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "scenarioId"

    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v2}, Lcom/miui/gallery/card/Card;->getScenarioId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v1, "assistant"

    const-string v2, "assistant_card_detail_header_click"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 350
    return-void
.end method

.method private saveAndNofity()V
    .locals 2

    .prologue
    .line 420
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/card/CardManager;->updateCard(Lcom/miui/gallery/card/Card;)V

    .line 421
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActionBarHelper:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->setActionBarTitle(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCardTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    return-void
.end method

.method private showConfirmDialog(Z)V
    .locals 6
    .param p1, "retry"    # Z

    .prologue
    .line 315
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 316
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "download_file_count"

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 317
    const-string v4, "local_file_count"

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mResults:[Landroid/net/Uri;

    array-length v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    const/4 v2, 0x0

    .line 319
    .local v2, "size":I
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    .line 320
    .local v3, "task":Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;
    iget v5, v3, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;->mSize:I

    add-int/2addr v2, v5

    .line 321
    goto :goto_0

    .line 322
    .end local v3    # "task":Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;
    :cond_0
    const-string v4, "download_file_size"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 323
    const-string v4, "retry_mode"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 324
    new-instance v1, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;

    invoke-direct {v1}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;-><init>()V

    .line 325
    .local v1, "dialog":Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;
    invoke-virtual {v1, v0}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->setArguments(Landroid/os/Bundle;)V

    .line 326
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "confirm_dialog"

    invoke-virtual {v1, v4, v5}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method private showNetworkMeteredDialog()V
    .locals 7

    .prologue
    .line 1105
    new-instance v5, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$7;

    invoke-direct {v5, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$7;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    .line 1116
    .local v5, "confirmDialogInterface":Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 1117
    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 1118
    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 1119
    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0176

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 1120
    invoke-virtual {v3}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c04c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 1121
    invoke-virtual {v4}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c04c1

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1116
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/ConfirmDialog;->showConfirmDialog(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V

    .line 1123
    return-void
.end method

.method private startDownload()V
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->cancel()V

    .line 308
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->destroy()V

    .line 310
    :cond_0
    new-instance v0, Lcom/miui/gallery/picker/uri/Downloader;

    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    new-instance v2, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$DownloadProgressListener;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/picker/uri/Downloader;-><init>(Ljava/util/ArrayList;Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;)V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    .line 311
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->start()V

    .line 312
    return-void
.end method

.method private updateCardIds()V
    .locals 6

    .prologue
    .line 381
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v4}, Lcom/miui/gallery/card/Card;->getAllMediaSha1s()Ljava/util/List;

    move-result-object v0

    .line 382
    .local v0, "allIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v4}, Lcom/miui/gallery/card/Card;->getSelectedMediaSha1s()Ljava/util/List;

    move-result-object v2

    .line 384
    .local v2, "selectedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSelectedPhotoSha1s:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 406
    :goto_0
    return-void

    .line 388
    :cond_0
    if-nez v0, :cond_1

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "allIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 391
    .restart local v0    # "allIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 392
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 395
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 396
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 397
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 398
    .local v3, "sha1":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSelectedPhotoSha1s:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 399
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 400
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 403
    .end local v3    # "sha1":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    const-string v5, "removeByUser"

    invoke-virtual {v4, v2, v5}, Lcom/miui/gallery/card/Card;->setSelectedMediaSha1s(Ljava/util/List;Ljava/lang/String;)V

    .line 404
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v4, v0}, Lcom/miui/gallery/card/Card;->setAllMediaSha1s(Ljava/util/List;)V

    .line 405
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->saveAndNofity()V

    goto :goto_0
.end method

.method private updateFlexboxLayoutParamHelper()V
    .locals 8

    .prologue
    .line 467
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mFlexboxLayoutHeight:I

    .line 468
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mImageInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 469
    .local v1, "imageSizeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;>;"
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mImageInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/card/model/MediaInfo;

    .line 471
    .local v2, "mediaInfo":Lcom/miui/gallery/card/model/MediaInfo;
    invoke-virtual {v2}, Lcom/miui/gallery/card/model/MediaInfo;->getOrientation()I

    move-result v5

    invoke-static {v5}, Lcom/miui/gallery/util/ExifUtil;->isWidthHeightRotated(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 472
    invoke-virtual {v2}, Lcom/miui/gallery/card/model/MediaInfo;->getHeight()I

    move-result v3

    .line 473
    .local v3, "width":I
    invoke-virtual {v2}, Lcom/miui/gallery/card/model/MediaInfo;->getWidth()I

    move-result v0

    .line 478
    .local v0, "height":I
    :goto_1
    new-instance v5, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    invoke-direct {v5, v3, v0}, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;-><init>(II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 475
    .end local v0    # "height":I
    .end local v3    # "width":I
    :cond_0
    invoke-virtual {v2}, Lcom/miui/gallery/card/model/MediaInfo;->getWidth()I

    move-result v3

    .line 476
    .restart local v3    # "width":I
    invoke-virtual {v2}, Lcom/miui/gallery/card/model/MediaInfo;->getHeight()I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_1

    .line 480
    .end local v0    # "height":I
    .end local v2    # "mediaInfo":Lcom/miui/gallery/card/model/MediaInfo;
    .end local v3    # "width":I
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mAdapter:Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    iget v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mFlexboxLayoutHeight:I

    iget-object v6, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .line 481
    invoke-virtual {v6}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0019

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 480
    invoke-virtual {v4, v1, v5, v6}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->updateLayoutSizes(Ljava/util/List;II)V

    .line 482
    iget v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mFlexboxLayoutHeight:I

    if-nez v4, :cond_2

    .line 483
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 485
    :cond_2
    return-void
.end method

.method private updateImages(Landroid/database/Cursor;)Z
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 424
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mImageInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 425
    .local v1, "old":I
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mImageInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 426
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSelectedPhotoSha1s:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 427
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 429
    :cond_0
    new-instance v0, Lcom/miui/gallery/card/model/MediaInfo;

    invoke-direct {v0, p1}, Lcom/miui/gallery/card/model/MediaInfo;-><init>(Landroid/database/Cursor;)V

    .line 430
    .local v0, "mediaInfo":Lcom/miui/gallery/card/model/MediaInfo;
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/gallery/card/model/MediaInfo;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getImageFeature(J)Lcom/miui/gallery/assistant/model/TinyImageFeature;

    move-result-object v3

    .line 431
    .local v3, "tinyImageFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    if-eqz v3, :cond_1

    .line 432
    invoke-virtual {v3}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getScore()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/card/model/MediaInfo;->setScore(D)V

    .line 434
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mImageInfos:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    const/16 v4, 0xf

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "sha1":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSelectedPhotoSha1s:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 440
    .end local v0    # "mediaInfo":Lcom/miui/gallery/card/model/MediaInfo;
    .end local v2    # "sha1":Ljava/lang/String;
    .end local v3    # "tinyImageFeature":Lcom/miui/gallery/assistant/model/TinyImageFeature;
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSelectedPhotoSha1s:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 441
    const-string v4, "StoryAlbumFragment"

    const-string v5, "empty selected ids after data updated"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v4}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    .line 443
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->updateCardIds()V

    .line 445
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mImageInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v1, v4, :cond_4

    .line 446
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->updateFlexboxLayoutParamHelper()V

    .line 447
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSlideShowHeaderView:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mImageInfos:Ljava/util/List;

    const/16 v6, 0x14

    invoke-direct {p0, v5, v6}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getTopNImages(Ljava/util/List;I)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->updateMedias(Ljava/util/List;)V

    .line 448
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->updateSlideHeaderPlayStatus()V

    .line 449
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->updateCardIds()V

    .line 450
    const/4 v4, 0x1

    .line 452
    :goto_0
    return v4

    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private updateSlideHeaderPlayStatus()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mImageInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mIsInActionMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mIsPlayIconScrollStateEnable:Z

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSlideShowHeaderView:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->setPlayEnable(Z)V

    .line 493
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSlideShowHeaderView:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->setPlayEnable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getLoader()Landroid/content/Loader;
    .locals 2

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    const-string/jumbo v0, "story_album"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 134
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseMediaFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 135
    if-eqz p1, :cond_0

    .line 136
    const-string v2, "card_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCardId:J

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 139
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v2, "card_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    const-string v2, "card_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCardId:J

    .line 142
    :cond_1
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v2

    iget-wide v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCardId:J

    invoke-virtual {v2, v4, v5}, Lcom/miui/gallery/card/CardManager;->getCardByCardId(J)Lcom/miui/gallery/card/Card;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    .line 143
    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v2}, Lcom/miui/gallery/card/Card;->getSelectedMediaSha1s()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 144
    :cond_2
    const-string v2, "StoryAlbumFragment"

    const-string v3, "Card and LocalIds should not be null %s"

    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Card and LocalIds should not be null,Card id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCardId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v2}, Lcom/miui/gallery/card/Card;->getSelectedMediaSha1s()Ljava/util/List;

    move-result-object v1

    .line 148
    .local v1, "selectedSha1s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mImageInfos:Ljava/util/List;

    .line 149
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSelectedPhotoSha1s:Ljava/util/Set;

    .line 150
    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSelectedPhotoSha1s:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 152
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mIsNightMode:Z

    .line 153
    new-instance v2, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    invoke-direct {v2, p0, v6}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;)V

    iput-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActionBarHelper:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    .line 154
    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActionBarHelper:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    invoke-static {v2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->access$100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;)V

    .line 155
    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v2}, Lcom/miui/gallery/card/Card;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->setTitle(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCardDescription:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCard:Lcom/miui/gallery/card/Card;

    invoke-virtual {v3}, Lcom/miui/gallery/card/Card;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    new-instance v2, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;

    invoke-direct {v2, p0, v6}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;)V

    iput-object v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mPhotoLoaderCallback:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;

    .line 158
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mPhotoLoaderCallback:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$PhotoLoaderCallback;

    invoke-virtual {v2, v3, v6, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 159
    return-void
.end method

.method public onAttachDialogFragment(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 1095
    instance-of v1, p1, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 1096
    check-cast v0, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;

    .line 1097
    .local v0, "dialog":Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->setPositiveListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1098
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCancelDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->setNegativeListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1102
    .end local v0    # "dialog":Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;
    .end local p1    # "fragment":Landroid/app/Fragment;
    :cond_0
    :goto_0
    return-void

    .line 1099
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_1
    instance-of v1, p1, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    if-eqz v1, :cond_0

    .line 1100
    check-cast p1, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDowloadCallback:Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$CallBack;

    invoke-virtual {p1, v1}, Lcom/miui/gallery/card/ui/detail/CardDownloadDialog;->setCallBack(Lcom/miui/gallery/card/ui/detail/CardDownloadDialog$CallBack;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1136
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onDestroyView()V

    .line 1137
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mParseFileMetaValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1141
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mParseFileMetaValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1143
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCheckDownloadFilesFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_2

    .line 1144
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCheckDownloadFilesFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 1145
    iput-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCheckDownloadFilesFuture:Lcom/miui/gallery/threadpool/Future;

    .line 1147
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDowloadResultFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_3

    .line 1148
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDowloadResultFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 1149
    iput-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDowloadResultFuture:Lcom/miui/gallery/threadpool/Future;

    .line 1151
    :cond_3
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 163
    const v3, 0x7f040151

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 164
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f1202a2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .line 165
    new-instance v3, Lcom/google/android/flexbox/FlexboxLayoutManager;

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v3, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mFlexboxLayoutManager:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 166
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mFlexboxLayoutManager:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v3, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    .line 167
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mFlexboxLayoutManager:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v3, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    .line 168
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mFlexboxLayoutManager:Lcom/google/android/flexbox/FlexboxLayoutManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    .line 169
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mFlexboxLayoutManager:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v3, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setRecycleChildrenOnDetach(Z)V

    .line 170
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mFlexboxLayoutManager:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 171
    new-instance v1, Lcom/google/android/flexbox/FlexboxItemDecoration;

    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v1, v3}, Lcom/google/android/flexbox/FlexboxItemDecoration;-><init>(Landroid/content/Context;)V

    .line 172
    .local v1, "flexboxItemDecoration":Lcom/google/android/flexbox/FlexboxItemDecoration;
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02008b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 173
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v3, v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 176
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04014f

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v3, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mHeaderView:Landroid/view/View;

    .line 177
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->initHeaderView()V

    .line 178
    new-instance v3, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v3, v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mAdapter:Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    .line 179
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mAdapter:Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    invoke-virtual {v3, v6}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->setHasStableIds(Z)V

    .line 180
    new-instance v3, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mAdapter:Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    invoke-direct {v3, v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;)V

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mAdapterWrapper:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;

    .line 181
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mAdapterWrapper:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;->addHeaderView(Landroid/view/View;)V

    .line 183
    new-instance v3, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-direct {v3, v4}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;-><init>(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;)V

    iput-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mListViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    .line 184
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mListViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    new-instance v4, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$1;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->setOnItemClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;)V

    .line 209
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mListViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-virtual {v3, v6}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->enableChoiceMode(Z)V

    .line 210
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mListViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mChoiceModeListener:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->setMultiChoiceModeListener(Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;)V

    .line 211
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mListViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mAdapterWrapper:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 212
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mListViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    new-instance v4, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;

    invoke-direct {v4, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 213
    return-object v2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 368
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onPause()V

    .line 369
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->pause()V

    .line 372
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 360
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onResume()V

    .line 361
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->resume()V

    .line 364
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseMediaFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 265
    const-string v0, "card_id"

    iget-wide v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mCardId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 266
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 354
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onStart()V

    .line 355
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSlideShowHeaderView:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    invoke-virtual {v0}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->resume()V

    .line 356
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 376
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onStop()V

    .line 377
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->mSlideShowHeaderView:Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    invoke-virtual {v0}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->pause()V

    .line 378
    return-void
.end method
