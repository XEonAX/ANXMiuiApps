.class public Lcom/miui/gallery/ui/RecommendFacePageFragment;
.super Lcom/miui/gallery/ui/BaseMediaFragment;
.source "RecommendFacePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/widget/PagerGridLayout$OnPageChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/RecommendFacePageFragment$FaceRecommendPhotoLoaderCallback;
    }
.end annotation


# instance fields
.field private confirmButton:Landroid/widget/Button;

.field private mEmptyViewStub:Landroid/view/ViewStub;

.field private mFaceGroup:Lcom/miui/gallery/widget/PagerGridLayout;

.field private mHandler:Landroid/os/Handler;

.field private mLocalIdOfAlbum:J

.field public mNoMoreRecommendations:Z

.field private mNormalView:Landroid/view/View;

.field private mPeopleName:Ljava/lang/String;

.field private mRecommendFaceAdapter:Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

.field private mRecommendFaceIds:Ljava/lang/String;

.field private mServerIdOfAlbum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mHandler:Landroid/os/Handler;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mNoMoreRecommendations:Z

    .line 145
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/RecommendFacePageFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/RecommendFacePageFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mRecommendFaceIds:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/RecommendFacePageFragment;)Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/RecommendFacePageFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mRecommendFaceAdapter:Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/RecommendFacePageFragment;)Lcom/miui/gallery/widget/PagerGridLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/RecommendFacePageFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mFaceGroup:Lcom/miui/gallery/widget/PagerGridLayout;

    return-object v0
.end method

.method private setTitle()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c02b0

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/RecommendFacePageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public changeToNextPage()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mFaceGroup:Lcom/miui/gallery/widget/PagerGridLayout;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mFaceGroup:Lcom/miui/gallery/widget/PagerGridLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/PagerGridLayout;->changeToNextPage()V

    .line 181
    :cond_0
    return-void
.end method

.method protected getLoader()Landroid/content/Loader;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "face_recommend"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseMediaFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "server_id_of_album"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mServerIdOfAlbum:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "local_id_of_album"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mLocalIdOfAlbum:J

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "album_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mPeopleName:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "server_ids_of_faces"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mRecommendFaceIds:Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Lcom/miui/gallery/ui/RecommendFacePageFragment;->setTitle()V

    .line 113
    new-instance v0, Lcom/miui/gallery/ui/RecommendFacePageFragment$3;

    iget-object v1, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mServerIdOfAlbum:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mLocalIdOfAlbum:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/miui/gallery/ui/RecommendFacePageFragment$3;-><init>(Lcom/miui/gallery/ui/RecommendFacePageFragment;Lcom/miui/gallery/ui/BaseMediaFragment;Ljava/lang/String;Ljava/lang/Long;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mRecommendFaceAdapter:Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    .line 129
    invoke-virtual {p0}, Lcom/miui/gallery/ui/RecommendFacePageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/miui/gallery/ui/RecommendFacePageFragment$FaceRecommendPhotoLoaderCallback;

    invoke-direct {v2, p0, v4}, Lcom/miui/gallery/ui/RecommendFacePageFragment$FaceRecommendPhotoLoaderCallback;-><init>(Lcom/miui/gallery/ui/RecommendFacePageFragment;Lcom/miui/gallery/ui/RecommendFacePageFragment$1;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 130
    return-void
.end method

.method public onActivityFinish()V
    .locals 3

    .prologue
    .line 184
    iget-boolean v1, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mNoMoreRecommendations:Z

    if-eqz v1, :cond_0

    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "all_faces_confirmed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 187
    iget-object v1, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/activity/BaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 189
    .end local v0    # "data":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    const v1, 0x7f040117

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f120263

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/PagerGridLayout;

    iput-object v1, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mFaceGroup:Lcom/miui/gallery/widget/PagerGridLayout;

    .line 54
    iget-object v1, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mFaceGroup:Lcom/miui/gallery/widget/PagerGridLayout;

    invoke-virtual {v1, p0}, Lcom/miui/gallery/widget/PagerGridLayout;->setOnPageChangedListener(Lcom/miui/gallery/widget/PagerGridLayout$OnPageChangedListener;)V

    .line 55
    const v1, 0x7f12016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->confirmButton:Landroid/widget/Button;

    .line 56
    const v1, 0x7f120264

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mEmptyViewStub:Landroid/view/ViewStub;

    .line 57
    const v1, 0x7f120262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mNormalView:Landroid/view/View;

    .line 58
    iget-object v1, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->confirmButton:Landroid/widget/Button;

    new-instance v2, Lcom/miui/gallery/ui/RecommendFacePageFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/RecommendFacePageFragment$1;-><init>(Lcom/miui/gallery/ui/RecommendFacePageFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-object v0
.end method

.method public onPageChanged(IIZ)V
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "pageCount"    # I
    .param p3, "lastPage"    # Z

    .prologue
    .line 78
    if-eqz p3, :cond_0

    .line 79
    iget-object v1, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mNormalView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mNoMoreRecommendations:Z

    .line 82
    iget-object v1, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mEmptyViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "emptyView":Landroid/view/View;
    const v1, 0x7f1200c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c017f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 84
    const v1, 0x7f12020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/ui/RecommendFacePageFragment$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/RecommendFacePageFragment$2;-><init>(Lcom/miui/gallery/ui/RecommendFacePageFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .end local v0    # "emptyView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onResume()V

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mFaceGroup:Lcom/miui/gallery/widget/PagerGridLayout;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment;->mFaceGroup:Lcom/miui/gallery/widget/PagerGridLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/PagerGridLayout;->freshCurrentPage()V

    .line 74
    :cond_0
    return-void
.end method
