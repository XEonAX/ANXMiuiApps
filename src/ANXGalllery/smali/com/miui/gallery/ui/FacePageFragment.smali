.class public Lcom/miui/gallery/ui/FacePageFragment;
.super Lcom/miui/gallery/ui/BaseMediaFragment;
.source "FacePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/util/face/CheckoutRecommendPeople$CheckoutStatusListener;
.implements Lcom/miui/gallery/widget/PagerGridLayout$OnPageChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;,
        Lcom/miui/gallery/ui/FacePageFragment$FaceRecommendPhotoLoaderCallback;,
        Lcom/miui/gallery/ui/FacePageFragment$FacePagePhotoLoaderCallback;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/adapter/FacePageAdapter;

.field private mAddFooterView:Z

.field private mAlbumName:Ljava/lang/String;

.field private mAllPhotosHeader:Landroid/view/View;

.field private mCheckoutRecommendPeopleTask:Lcom/miui/gallery/util/face/CheckoutRecommendPeople;

.field private mCoverRefreshTask:Lcom/miui/gallery/threadpool/Future;

.field private mFaceAlbumMergeHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

.field private mFaceAlbumRenameHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

.field private mFaceCoverDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mFaceCoverHeader:Landroid/view/View;

.field private mFaceCoverPath:Ljava/lang/String;

.field private mFaceCoverRectF:Landroid/graphics/RectF;

.field private mFaceCoverViewAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

.field private mFaceGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

.field private mFaceGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

.field private mFaceMediaSet:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

.field private mFaceMediasetsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private mFacePagePhotoLoaderCallback:Lcom/miui/gallery/ui/FacePageFragment$FacePagePhotoLoaderCallback;

.field private mFooterView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHasRequestRecommendFace:Z

.field private mListener:Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;

.field private mLocalIdOfAlbum:J

.field private mNameRefreshTask:Lcom/miui/gallery/threadpool/Future;

.field private mPeopleRecommendMediaSet:Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;

.field private mRecommendFaceAdapter:Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

.field private mRecommendFaceButtonContainer:Landroid/view/View;

.field private mRecommendFaceGroup:Lcom/miui/gallery/widget/PagerGridLayout;

.field private mRecommendFaceGroupHeader:Landroid/view/View;

.field private mRecommendFaceIds:Ljava/lang/String;

.field private mRelationType:I

.field private mRemoveFromFaceAlbumHandler:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

.field private mServerIdOfAlbum:Ljava/lang/String;

.field private mShareButtonContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAddFooterView:Z

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mHandler:Landroid/os/Handler;

    .line 872
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/adapter/FacePageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAdapter:Lcom/miui/gallery/adapter/FacePageAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/FacePageFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->getSelectioinArgs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/util/face/CheckoutRecommendPeople;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mCheckoutRecommendPeopleTask:Lcom/miui/gallery/util/face/CheckoutRecommendPeople;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/miui/gallery/ui/FacePageFragment;Lcom/miui/gallery/util/face/CheckoutRecommendPeople;)Lcom/miui/gallery/util/face/CheckoutRecommendPeople;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;
    .param p1, "x1"    # Lcom/miui/gallery/util/face/CheckoutRecommendPeople;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mCheckoutRecommendPeopleTask:Lcom/miui/gallery/util/face/CheckoutRecommendPeople;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/FacePageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->freshFacePhotoCount()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/ui/FacePageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->refreshFaceCover()V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/gallery/ui/FacePageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAddFooterView:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/miui/gallery/ui/FacePageFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAddFooterView:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/miui/gallery/ui/FacePageFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFooterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/ui/FacePageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->showRenameHandler()V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/gallery/ui/FacePageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->invalidateFaceGridView()V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/gallery/ui/FacePageFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mServerIdOfAlbum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/FacePageFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->getOrderBy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/gallery/ui/FacePageFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceCoverPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/miui/gallery/ui/FacePageFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceCoverPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/miui/gallery/ui/FacePageFragment;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceCoverRectF:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/miui/gallery/ui/FacePageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->displayFaceCover()V

    return-void
.end method

.method static synthetic access$2300(Lcom/miui/gallery/ui/FacePageFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceCoverHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/miui/gallery/ui/FacePageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->setTitle()V

    return-void
.end method

.method static synthetic access$2600(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceAdapter:Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/miui/gallery/ui/FacePageFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceGroupHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/miui/gallery/ui/FacePageFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceIds:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/widget/PagerGridLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceGroup:Lcom/miui/gallery/widget/PagerGridLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/FacePageFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/miui/gallery/ui/FacePageFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/FacePageFragment;->changeVisibilityOfShareContainer(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/miui/gallery/ui/FacePageFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAlbumName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/miui/gallery/ui/FacePageFragment;Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;
    .param p1, "x1"    # Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/FacePageFragment;->startRemoveFromFaceAlbum(Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/miui/gallery/ui/FacePageFragment;Landroid/view/ActionMode;[J)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;
    .param p1, "x1"    # Landroid/view/ActionMode;
    .param p2, "x2"    # [J

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/FacePageFragment;->doDelete(Landroid/view/ActionMode;[J)V

    return-void
.end method

.method static synthetic access$3600(Lcom/miui/gallery/ui/FacePageFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mPeopleRecommendMediaSet:Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/FacePageFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mLocalIdOfAlbum:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/FacePageFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/FacePageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->toast2CreateBabyAlbumBeforeShare()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/FacePageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mHasRequestRecommendFace:Z

    return v0
.end method

.method static synthetic access$902(Lcom/miui/gallery/ui/FacePageFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mHasRequestRecommendFace:Z

    return p1
.end method

.method private addAllPhotosHeader()V
    .locals 4

    .prologue
    .line 719
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAllPhotosHeader:Landroid/view/View;

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040078

    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAllPhotosHeader:Landroid/view/View;

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAllPhotosHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->addHeaderView(Landroid/view/View;)V

    .line 724
    return-void
.end method

.method private addFaceCoverHeader()V
    .locals 6

    .prologue
    .line 428
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040079

    iget-object v4, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceCoverHeader:Landroid/view/View;

    .line 430
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceCoverHeader:Landroid/view/View;

    const v3, 0x7f120160

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 431
    .local v0, "coverView":Landroid/widget/ImageView;
    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceCoverViewAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    .line 432
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->initFaceCoverDisplayOptions()V

    .line 433
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->displayFaceCover()V

    .line 434
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceCoverHeader:Landroid/view/View;

    const v3, 0x7f120163

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 435
    .local v1, "faceNameEdit":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    const v2, 0x7f0c01e9

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/FacePageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :goto_0
    new-instance v2, Lcom/miui/gallery/ui/FacePageFragment$7;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/FacePageFragment$7;-><init>(Lcom/miui/gallery/ui/FacePageFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceCoverHeader:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->addHeaderView(Landroid/view/View;)V

    .line 448
    return-void

    .line 438
    :cond_0
    const v2, 0x7f0c01e8

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/FacePageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private addHeaderView()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->addFaceCoverHeader()V

    .line 423
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->addRecommendGroupHeader()V

    .line 424
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->addAllPhotosHeader()V

    .line 425
    return-void
.end method

.method private addRecommendGroupHeader()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 560
    new-instance v1, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;

    new-instance v2, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    iget-wide v4, p0, Lcom/miui/gallery/ui/FacePageFragment;->mLocalIdOfAlbum:J

    .line 562
    invoke-virtual {p0}, Lcom/miui/gallery/ui/FacePageFragment;->getServerIdOfAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v3, v6}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;-><init>(Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mPeopleRecommendMediaSet:Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;

    .line 563
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mPeopleRecommendMediaSet:Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->refreshRecommendInfo()V

    .line 564
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mPeopleRecommendMediaSet:Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;

    .line 565
    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->getActualNeedRecommendPeopleFacePhotoNumber()I

    move-result v0

    .line 568
    .local v0, "recommendFaceCount":I
    if-lez v0, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/miui/gallery/ui/FacePageFragment;->getServerIdOfAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/preference/GalleryPreferences$Face;->isFaceRecommendGroupHidden(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 570
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mPeopleRecommendMediaSet:Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->getServerIdsIn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceIds:Ljava/lang/String;

    .line 572
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04007b

    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceGroupHeader:Landroid/view/View;

    .line 574
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceGroupHeader:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->addHeaderView(Landroid/view/View;)V

    .line 575
    const-string v1, "face"

    const-string v2, "face_show_recommend_panel"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceGroupHeader:Landroid/view/View;

    const v2, 0x7f120169

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/PagerGridLayout;

    iput-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceGroup:Lcom/miui/gallery/widget/PagerGridLayout;

    .line 578
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceGroup:Lcom/miui/gallery/widget/PagerGridLayout;

    invoke-virtual {v1, p0}, Lcom/miui/gallery/widget/PagerGridLayout;->setOnPageChangedListener(Lcom/miui/gallery/widget/PagerGridLayout$OnPageChangedListener;)V

    .line 579
    new-instance v1, Lcom/miui/gallery/ui/FacePageFragment$13;

    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mServerIdOfAlbum:Ljava/lang/String;

    iget-wide v4, p0, Lcom/miui/gallery/ui/FacePageFragment;->mLocalIdOfAlbum:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/miui/gallery/ui/FacePageFragment$13;-><init>(Lcom/miui/gallery/ui/FacePageFragment;Lcom/miui/gallery/ui/BaseMediaFragment;Ljava/lang/String;Ljava/lang/Long;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceAdapter:Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    .line 595
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceAdapter:Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    new-instance v2, Lcom/miui/gallery/ui/FacePageFragment$14;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/FacePageFragment$14;-><init>(Lcom/miui/gallery/ui/FacePageFragment;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->setOnLoadingCompleteListener(Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;)V

    .line 606
    invoke-virtual {p0}, Lcom/miui/gallery/ui/FacePageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    new-instance v3, Lcom/miui/gallery/ui/FacePageFragment$FaceRecommendPhotoLoaderCallback;

    invoke-direct {v3, p0, v7}, Lcom/miui/gallery/ui/FacePageFragment$FaceRecommendPhotoLoaderCallback;-><init>(Lcom/miui/gallery/ui/FacePageFragment;Lcom/miui/gallery/ui/FacePageFragment$1;)V

    invoke-virtual {v1, v2, v7, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 608
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceGroupHeader:Landroid/view/View;

    const v2, 0x7f12016a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/ui/FacePageFragment$15;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/FacePageFragment$15;-><init>(Lcom/miui/gallery/ui/FacePageFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceGroupHeader:Landroid/view/View;

    const v2, 0x7f120168

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/ui/FacePageFragment$16;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/FacePageFragment$16;-><init>(Lcom/miui/gallery/ui/FacePageFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAddFooterView:Z

    goto :goto_0
.end method

.method private cancelTask(Lcom/miui/gallery/threadpool/Future;)V
    .locals 1
    .param p1, "future"    # Lcom/miui/gallery/threadpool/Future;

    .prologue
    .line 554
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 557
    :cond_0
    return-void
.end method

.method private changeVisibilityOfShareContainer(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mShareButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mShareButtonContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    :cond_0
    return-void
.end method

.method private confirmListener()Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;
    .locals 1

    .prologue
    .line 1098
    new-instance v0, Lcom/miui/gallery/ui/FacePageFragment$19;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/FacePageFragment$19;-><init>(Lcom/miui/gallery/ui/FacePageFragment;)V

    return-object v0
.end method

.method private displayFaceCover()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 466
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceCoverPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 482
    :goto_0
    return-void

    .line 469
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceCoverPath:Ljava/lang/String;

    .line 470
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceCoverViewAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceCoverDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    new-instance v5, Lcom/miui/gallery/ui/FacePageFragment$8;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/FacePageFragment$8;-><init>(Lcom/miui/gallery/ui/FacePageFragment;)V

    iget-object v7, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceCoverRectF:Landroid/graphics/RectF;

    move-object v6, v4

    .line 469
    invoke-virtual/range {v0 .. v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private doDelete(Landroid/view/ActionMode;[J)V
    .locals 10
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "selectedPhotoIds"    # [J

    .prologue
    .line 1065
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-string v2, "FacePageFragmentDeleteMediaDialogFragment"

    new-instance v3, Lcom/miui/gallery/ui/FacePageFragment$18;

    invoke-direct {v3, p0, p1}, Lcom/miui/gallery/ui/FacePageFragment$18;-><init>(Lcom/miui/gallery/ui/FacePageFragment;Landroid/view/ActionMode;)V

    iget-wide v4, p0, Lcom/miui/gallery/ui/FacePageFragment;->mLocalIdOfAlbum:J

    iget-object v6, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAlbumName:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0x1c

    move-object v9, p2

    invoke-static/range {v1 .. v9}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->delete(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;JLjava/lang/String;II[J)V

    .line 1085
    return-void
.end method

.method private freshFacePhotoCount()V
    .locals 7

    .prologue
    .line 327
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceCoverHeader:Landroid/view/View;

    const v3, 0x7f120162

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 328
    .local v1, "photoCount":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAdapter:Lcom/miui/gallery/adapter/FacePageAdapter;

    invoke-virtual {v2}, Lcom/miui/gallery/adapter/FacePageAdapter;->getCount()I

    move-result v0

    .line 329
    .local v0, "count":I
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0021

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    return-void
.end method

.method private getAlbumName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 741
    :goto_0
    return-object v0

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAlbumName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v1, 0x7f0c0339

    .line 737
    invoke-virtual {v0, v1}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAlbumName:Ljava/lang/String;

    .line 738
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAlbumName:Ljava/lang/String;

    goto :goto_0

    .line 741
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private getOrderBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    const-string v0, "dateTaken DESC "

    return-object v0
.end method

.method private getSelectioinArgs()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 342
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mServerIdOfAlbum:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mLocalIdOfAlbum:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method private initFaceCoverDisplayOptions()V
    .locals 4

    .prologue
    const v1, 0x7f0200df

    const/4 v3, 0x1

    .line 451
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 452
    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 453
    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadFromMicroCache(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 454
    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 455
    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 456
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 457
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 458
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 459
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;-><init>(Z)V

    .line 460
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 461
    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->usingRegionDecoderFace(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceCoverDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 463
    return-void
.end method

.method private invalidateFaceGridView()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->postInvalidate()V

    .line 491
    :cond_0
    return-void
.end method

.method private recordDisplayModeCountEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 816
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 817
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "mode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    const-string v1, "face"

    const-string v2, "face_change_display_mode"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 820
    return-void
.end method

.method private refreshFaceCover()V
    .locals 3

    .prologue
    .line 494
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mServerIdOfAlbum:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mCoverRefreshTask:Lcom/miui/gallery/threadpool/Future;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/FacePageFragment;->cancelTask(Lcom/miui/gallery/threadpool/Future;)V

    .line 498
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/FacePageFragment$9;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/FacePageFragment$9;-><init>(Lcom/miui/gallery/ui/FacePageFragment;)V

    new-instance v2, Lcom/miui/gallery/ui/FacePageFragment$10;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/FacePageFragment$10;-><init>(Lcom/miui/gallery/ui/FacePageFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mCoverRefreshTask:Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method

.method private refreshFaceNameIfNeeded()V
    .locals 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mNameRefreshTask:Lcom/miui/gallery/threadpool/Future;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/FacePageFragment;->cancelTask(Lcom/miui/gallery/threadpool/Future;)V

    .line 524
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/FacePageFragment$11;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/FacePageFragment$11;-><init>(Lcom/miui/gallery/ui/FacePageFragment;)V

    new-instance v2, Lcom/miui/gallery/ui/FacePageFragment$12;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/FacePageFragment$12;-><init>(Lcom/miui/gallery/ui/FacePageFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mNameRefreshTask:Lcom/miui/gallery/threadpool/Future;

    .line 551
    return-void
.end method

.method private seeIfHasRecommendFace()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mServerIdOfAlbum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/FacePageFragment$6;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/FacePageFragment$6;-><init>(Lcom/miui/gallery/ui/FacePageFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method

.method private setTitle()V
    .locals 5

    .prologue
    .line 415
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c01e2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAlbumName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/ui/FacePageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceCoverHeader:Landroid/view/View;

    const v1, 0x7f120161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    return-void
.end method

.method private shoeIgnoreAlert()Z
    .locals 7

    .prologue
    .line 793
    new-instance v1, Lcom/miui/gallery/ui/FacePageFragment$17;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/FacePageFragment$17;-><init>(Lcom/miui/gallery/ui/FacePageFragment;)V

    .line 809
    .local v1, "confirmListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const/4 v2, 0x0

    const-string v3, ""

    iget-object v4, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v5, 0x7f0c0258

    .line 810
    invoke-virtual {v4, v5}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v6, 0x104000a

    .line 811
    invoke-virtual {v5, v6}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x1040000

    .line 809
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/DialogUtil;->showConfirmAlertWithCancel(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/app/AlertDialog;

    .line 812
    const/4 v0, 0x1

    return v0
.end method

.method private showMergeHandler()V
    .locals 5

    .prologue
    .line 783
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceAlbumMergeHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    if-nez v1, :cond_0

    .line 784
    new-instance v0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    iget-wide v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mLocalIdOfAlbum:J

    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mServerIdOfAlbum:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAlbumName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 785
    .local v0, "faceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceMediasetsList:Ljava/util/ArrayList;

    .line 786
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceMediasetsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    new-instance v1, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceMediasetsList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->confirmListener()Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceAlbumMergeHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    .line 789
    .end local v0    # "faceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceAlbumMergeHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->show()V

    .line 790
    return-void
.end method

.method private showRenameHandler()V
    .locals 5

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceAlbumRenameHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    if-nez v0, :cond_0

    .line 1089
    new-instance v0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    iget-wide v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mLocalIdOfAlbum:J

    .line 1090
    invoke-virtual {p0}, Lcom/miui/gallery/ui/FacePageFragment;->getServerIdOfAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceMediaSet:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    .line 1091
    new-instance v1, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceMediaSet:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    .line 1092
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->confirmListener()Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;

    move-result-object v4

    iget v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRelationType:I

    invoke-static {v0}, Lcom/miui/gallery/model/PeopleContactInfo;->isUnKnownRelation(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;-><init>(Landroid/app/Activity;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;Z)V

    iput-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceAlbumRenameHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceAlbumRenameHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->show()V

    .line 1095
    return-void

    .line 1092
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startRemoveFromFaceAlbum(Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;)V
    .locals 7
    .param p1, "removeListener"    # Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRemoveFromFaceAlbumHandler:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    if-nez v0, :cond_0

    .line 1150
    new-instance v0, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    new-instance v2, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    iget-wide v4, p0, Lcom/miui/gallery/ui/FacePageFragment;->mLocalIdOfAlbum:J

    .line 1152
    invoke-virtual {p0}, Lcom/miui/gallery/ui/FacePageFragment;->getServerIdOfAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v3, v6}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, p1}, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;-><init>(Landroid/app/Activity;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRemoveFromFaceAlbumHandler:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRemoveFromFaceAlbumHandler:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;->show()V

    .line 1156
    return-void
.end method

.method private toast2CreateBabyAlbumBeforeShare()V
    .locals 5

    .prologue
    .line 265
    new-instance v1, Lcom/miui/gallery/ui/FacePageFragment$4;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/FacePageFragment$4;-><init>(Lcom/miui/gallery/ui/FacePageFragment;)V

    .line 277
    .local v1, "confirmListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/miui/gallery/ui/FacePageFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/FacePageFragment$5;-><init>(Lcom/miui/gallery/ui/FacePageFragment;)V

    .line 285
    .local v0, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    :try_start_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 286
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    .line 287
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c00c1

    .line 288
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v4, 0x104000a

    .line 290
    invoke-virtual {v3, v4}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const/high16 v4, 0x1040000

    .line 293
    invoke-virtual {v3, v4}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 292
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 295
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public changeDisplayMode()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAdapter:Lcom/miui/gallery/adapter/FacePageAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/FacePageAdapter;->changeDisplayMode()V

    .line 335
    return-void
.end method

.method public changeToNextPage()V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceGroup:Lcom/miui/gallery/widget/PagerGridLayout;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceGroup:Lcom/miui/gallery/widget/PagerGridLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/PagerGridLayout;->changeToNextPage()V

    .line 700
    :cond_0
    return-void
.end method

.method public getIsHasEverNotCreateBabyAlbumFromThis()J
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mServerIdOfAlbum:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/provider/FaceManager;->queryBabyAlbumByPeopleId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getLoader()Landroid/content/Loader;
    .locals 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/miui/gallery/ui/FacePageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    const-string v0, "face"

    return-object v0
.end method

.method public getServerIdOfAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mServerIdOfAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public isFaceDisplayMode()Z
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAdapter:Lcom/miui/gallery/adapter/FacePageAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/FacePageAdapter;->isFaceDisplayMode()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 380
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseMediaFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 381
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 382
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "server_id_of_album"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mServerIdOfAlbum:Ljava/lang/String;

    .line 383
    const-string v1, "local_id_of_album"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/ui/FacePageFragment;->mLocalIdOfAlbum:J

    .line 384
    const-string v1, "face_album_cover"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceCoverPath:Ljava/lang/String;

    .line 385
    const-string v1, "face_position_rect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceCoverRectF:Landroid/graphics/RectF;

    .line 386
    const-string v1, "album_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAlbumName:Ljava/lang/String;

    .line 387
    new-instance v1, Lcom/miui/gallery/ui/FacePageFragment$FacePagePhotoLoaderCallback;

    invoke-direct {v1, p0, v6}, Lcom/miui/gallery/ui/FacePageFragment$FacePagePhotoLoaderCallback;-><init>(Lcom/miui/gallery/ui/FacePageFragment;Lcom/miui/gallery/ui/FacePageFragment$1;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFacePagePhotoLoaderCallback:Lcom/miui/gallery/ui/FacePageFragment$FacePagePhotoLoaderCallback;

    .line 388
    invoke-virtual {p0}, Lcom/miui/gallery/ui/FacePageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFacePagePhotoLoaderCallback:Lcom/miui/gallery/ui/FacePageFragment$FacePagePhotoLoaderCallback;

    invoke-virtual {v1, v2, v6, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 389
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->addHeaderView()V

    .line 390
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->setTitle()V

    .line 391
    if-eqz p1, :cond_1

    .line 392
    const-string v1, "NormalPeopleFaceMediaset"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    iput-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceMediaSet:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    .line 393
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceMediaSet:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    if-eqz v1, :cond_0

    .line 394
    new-instance v3, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    iget-object v4, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v5, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceMediaSet:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->confirmListener()Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;

    move-result-object v6

    iget v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRelationType:I

    invoke-static {v1}, Lcom/miui/gallery/model/PeopleContactInfo;->isUnKnownRelation(I)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-direct {v3, v4, v5, v6, v1}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;-><init>(Landroid/app/Activity;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;Z)V

    iput-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceAlbumRenameHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    .line 396
    :cond_0
    const-string v1, "NormalPeopleFaceMediasetList"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceMediasetsList:Ljava/util/ArrayList;

    .line 397
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceMediasetsList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 398
    new-instance v1, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceMediasetsList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->confirmListener()Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceAlbumMergeHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    .line 401
    :cond_1
    return-void

    .line 394
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 826
    packed-switch p1, :pswitch_data_0

    .line 868
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/BaseMediaFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 828
    :pswitch_1
    const/4 v1, 0x0

    .line 829
    .local v1, "contact1":Lcom/miui/gallery/model/PeopleContactInfo;
    if-eqz p3, :cond_1

    if-ne p2, v3, :cond_1

    .line 830
    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v3, p3}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->getContactInfo(Landroid/content/Context;Landroid/content/Intent;)Lcom/miui/gallery/model/PeopleContactInfo;

    move-result-object v1

    .line 832
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRemoveFromFaceAlbumHandler:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    if-eqz v3, :cond_0

    .line 833
    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRemoveFromFaceAlbumHandler:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    invoke-virtual {v3, v1}, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;->finishWhenGetContact(Lcom/miui/gallery/model/PeopleContactInfo;)V

    goto :goto_0

    .line 837
    .end local v1    # "contact1":Lcom/miui/gallery/model/PeopleContactInfo;
    :pswitch_2
    const/4 v0, 0x0

    .line 838
    .local v0, "contact":Lcom/miui/gallery/model/PeopleContactInfo;
    if-eqz p3, :cond_2

    if-ne p2, v3, :cond_2

    .line 839
    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v3, p3}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->getContactInfo(Landroid/content/Context;Landroid/content/Intent;)Lcom/miui/gallery/model/PeopleContactInfo;

    move-result-object v0

    .line 841
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceAlbumRenameHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    if-eqz v3, :cond_3

    .line 842
    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceAlbumRenameHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->finishWhenGetContact(Lcom/miui/gallery/model/PeopleContactInfo;)V

    .line 844
    :cond_3
    iput-object v4, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceMediaSet:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    goto :goto_0

    .line 848
    .end local v0    # "contact":Lcom/miui/gallery/model/PeopleContactInfo;
    :pswitch_3
    if-eqz p3, :cond_0

    if-ne p2, v3, :cond_0

    .line 849
    const-string v3, "all_faces_confirmed"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 850
    .local v2, "removeFooterView":Z
    if-eqz v2, :cond_0

    .line 851
    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v4, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFooterView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0

    .line 857
    .end local v2    # "removeFooterView":Z
    :pswitch_4
    const/4 v0, 0x0

    .line 858
    .restart local v0    # "contact":Lcom/miui/gallery/model/PeopleContactInfo;
    if-eqz p3, :cond_4

    if-ne p2, v3, :cond_4

    .line 859
    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v3, p3}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->getContactInfo(Landroid/content/Context;Landroid/content/Intent;)Lcom/miui/gallery/model/PeopleContactInfo;

    move-result-object v0

    .line 861
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceAlbumMergeHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    if-eqz v3, :cond_5

    .line 862
    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceAlbumMergeHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->finishWhenGetContact(Lcom/miui/gallery/model/PeopleContactInfo;)V

    .line 864
    :cond_5
    iput-object v4, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceMediasetsList:Ljava/util/ArrayList;

    goto :goto_0

    .line 826
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onDestroy()V

    .line 243
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceAdapter:Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceAdapter:Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->setOnLoadingCompleteListener(Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mNameRefreshTask:Lcom/miui/gallery/threadpool/Future;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/FacePageFragment;->cancelTask(Lcom/miui/gallery/threadpool/Future;)V

    .line 247
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mCoverRefreshTask:Lcom/miui/gallery/threadpool/Future;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/FacePageFragment;->cancelTask(Lcom/miui/gallery/threadpool/Future;)V

    .line 249
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAdapter:Lcom/miui/gallery/adapter/FacePageAdapter;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAdapter:Lcom/miui/gallery/adapter/FacePageAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/FacePageAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 252
    :cond_1
    return-void
.end method

.method public onFinishCheckoutPeopleFace(I)V
    .locals 1
    .param p1, "peopleNumber"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mPeopleRecommendMediaSet:Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/provider/deprecated/PeopleRecommendMediaSet;->refreshRecommendInfo()V

    .line 324
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f12015c

    const/4 v5, 0x0

    .line 137
    const v2, 0x7f040076

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 138
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/miui/gallery/adapter/FacePageAdapter;

    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v2, v3}, Lcom/miui/gallery/adapter/FacePageAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAdapter:Lcom/miui/gallery/adapter/FacePageAdapter;

    .line 140
    const v2, 0x7f12008d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .line 141
    new-instance v2, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-direct {v2, v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .line 142
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mAdapter:Lcom/miui/gallery/adapter/FacePageAdapter;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    new-instance v3, Lcom/miui/gallery/ui/FacePageFragment$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/FacePageFragment$1;-><init>(Lcom/miui/gallery/ui/FacePageFragment;)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 164
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v2, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAreHeadersSticky(Z)V

    .line 166
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04013d

    iget-object v4, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFooterView:Landroid/view/View;

    .line 168
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFooterView:Landroid/view/View;

    const v3, 0x7f120286

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceButtonContainer:Landroid/view/View;

    .line 169
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceButtonContainer:Landroid/view/View;

    const v3, 0x7f120287

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/ui/FacePageFragment$2;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/FacePageFragment$2;-><init>(Lcom/miui/gallery/ui/FacePageFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "relationType"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRelationType:I

    .line 186
    iget v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRelationType:I

    invoke-static {v2}, Lcom/miui/gallery/model/PeopleContactInfo;->isBabyRelation(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->supportShare()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    const v2, 0x7f12015b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mShareButtonContainer:Landroid/view/View;

    .line 188
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mShareButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mShareButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/ActionMenuItemView;

    .line 190
    .local v0, "share":Lcom/miui/gallery/widget/ActionMenuItemView;
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v2}, Lcom/miui/gallery/util/BuildUtil;->isMiuiSdkGte15(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/gallery/widget/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_0
    invoke-virtual {v0, v6}, Lcom/miui/gallery/widget/ActionMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/ui/FacePageFragment$3;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/FacePageFragment$3;-><init>(Lcom/miui/gallery/ui/FacePageFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    .end local v0    # "share":Lcom/miui/gallery/widget/ActionMenuItemView;
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setChoiceMode(I)V

    .line 211
    new-instance v2, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;-><init>(Lcom/miui/gallery/ui/FacePageFragment;Lcom/miui/gallery/ui/FacePageFragment$1;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mListener:Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;

    .line 212
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment;->mListener:Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setMultiChoiceModeListener(Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;)V

    .line 213
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 758
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 778
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 760
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/FacePageFragment;->changeDisplayMode()V

    .line 761
    const-string v1, "photo"

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/FacePageFragment;->recordDisplayModeCountEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 765
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/FacePageFragment;->changeDisplayMode()V

    .line 766
    const-string v1, "face"

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/FacePageFragment;->recordDisplayModeCountEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 770
    :pswitch_2
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->showMergeHandler()V

    goto :goto_0

    .line 774
    :pswitch_3
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->shoeIgnoreAlert()Z

    goto :goto_0

    .line 758
    :pswitch_data_0
    .packed-switch 0x7f1202fc
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPageChanged(IIZ)V
    .locals 6
    .param p1, "pageIndex"    # I
    .param p2, "pageCount"    # I
    .param p3, "lastPage"    # Z

    .prologue
    const/4 v5, 0x1

    .line 704
    if-eqz p3, :cond_0

    .line 705
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceGroupHeader:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->removeHeaderView(Landroid/view/View;)Z

    .line 716
    :goto_0
    return-void

    .line 708
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceGroupHeader:Landroid/view/View;

    const v2, 0x7f120167

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 709
    .local v0, "groupNumber":Landroid/widget/TextView;
    if-ne p2, v5, :cond_1

    .line 710
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceGroupHeader:Landroid/view/View;

    const v2, 0x7f120166

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 712
    :cond_1
    const v1, 0x7f0c01eb

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x1

    .line 713
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/ui/FacePageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onResume()V

    .line 225
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->refreshFaceNameIfNeeded()V

    .line 226
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment;->seeIfHasRecommendFace()V

    .line 227
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceGroup:Lcom/miui/gallery/widget/PagerGridLayout;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mRecommendFaceGroup:Lcom/miui/gallery/widget/PagerGridLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/PagerGridLayout;->freshCurrentPage()V

    .line 230
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 405
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseMediaFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 406
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceMediaSet:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    if-eqz v0, :cond_0

    .line 407
    const-string v0, "NormalPeopleFaceMediaset"

    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceMediaSet:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceMediasetsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 410
    const-string v0, "NormalPeopleFaceMediasetList"

    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment;->mFaceMediasetsList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 412
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onStop()V

    .line 235
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mCheckoutRecommendPeopleTask:Lcom/miui/gallery/util/face/CheckoutRecommendPeople;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment;->mCheckoutRecommendPeopleTask:Lcom/miui/gallery/util/face/CheckoutRecommendPeople;

    invoke-virtual {v0}, Lcom/miui/gallery/util/face/CheckoutRecommendPeople;->clearListener()V

    .line 238
    :cond_0
    return-void
.end method
