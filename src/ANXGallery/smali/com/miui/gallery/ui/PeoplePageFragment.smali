.class public Lcom/miui/gallery/ui/PeoplePageFragment;
.super Lcom/miui/gallery/ui/BaseFragment;
.source "PeoplePageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;,
        Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;,
        Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;
    }
.end annotation


# instance fields
.field private mChoiceModeListener:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

.field private mDisplayPeopleMode:Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;

.field private mEmptyViewStub:Landroid/view/ViewStub;

.field private mFaceAlbumRenameHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

.field mFirstLoadFinish:Z

.field private mFooterView:Landroid/view/View;

.field mHandler:Landroid/os/Handler;

.field mHaveShownSetGroupToastDialog:Z

.field private mInMarkMode:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMarkMyselfHelper:Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;

.field private mMarkName:Ljava/lang/String;

.field private mMarkRelation:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

.field private mPeopleGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

.field private mPeopleGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

.field private mPeoplePageAdapter:Lcom/miui/gallery/adapter/PeoplePageAdapter;

.field private mPeoplePagePhotoLoaderCallback:Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;

.field private mShowEmptyViewHelper:Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseFragment;-><init>()V

    .line 86
    new-instance v0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment;Lcom/miui/gallery/ui/PeoplePageFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mShowEmptyViewHelper:Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;

    .line 93
    sget-object v0, Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;->DISPLAY_PARTIAL_PEOPLE:Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;

    iput-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mDisplayPeopleMode:Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;

    .line 97
    iput-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mMarkMyselfHelper:Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;

    .line 100
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mInMarkMode:Z

    .line 101
    iput-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mMarkName:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mMarkRelation:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 244
    new-instance v0, Lcom/miui/gallery/ui/PeoplePageFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PeoplePageFragment$2;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 316
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mHaveShownSetGroupToastDialog:Z

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mFirstLoadFinish:Z

    .line 596
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mHandler:Landroid/os/Handler;

    .line 635
    new-instance v0, Lcom/miui/gallery/ui/PeoplePageFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PeoplePageFragment$3;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mChoiceModeListener:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/PeoplePageFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 75
    invoke-direct/range {p0 .. p5}, Lcom/miui/gallery/ui/PeoplePageFragment;->finishWithMarkSuccessResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mFaceAlbumRenameHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/miui/gallery/ui/PeoplePageFragment;Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;)Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;
    .param p1, "x1"    # Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mFaceAlbumRenameHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/miui/gallery/ui/PeoplePageFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct/range {p0 .. p5}, Lcom/miui/gallery/ui/PeoplePageFragment;->finishWithMarkSuccessResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/gallery/ui/PeoplePageFragment;)Landroid/view/ViewStub;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mEmptyViewStub:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mShowEmptyViewHelper:Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeopleGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/ui/PeoplePageFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mFooterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mMarkMyselfHelper:Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/miui/gallery/ui/PeoplePageFragment;Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;)Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;
    .param p1, "x1"    # Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mMarkMyselfHelper:Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/miui/gallery/ui/PeoplePageFragment;[JLandroid/view/ActionMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;
    .param p1, "x1"    # [J
    .param p2, "x2"    # Landroid/view/ActionMode;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PeoplePageFragment;->mergePeople([JLandroid/view/ActionMode;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/gallery/ui/PeoplePageFragment;[JLandroid/view/ActionMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;
    .param p1, "x1"    # [J
    .param p2, "x2"    # Landroid/view/ActionMode;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PeoplePageFragment;->showIgnoreFaceAlbumAlert([JLandroid/view/ActionMode;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/miui/gallery/ui/PeoplePageFragment;[JLandroid/view/ActionMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;
    .param p1, "x1"    # [J
    .param p2, "x2"    # Landroid/view/ActionMode;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PeoplePageFragment;->showAndSetRelationDialog([JLandroid/view/ActionMode;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/miui/gallery/ui/PeoplePageFragment;[JLandroid/view/ActionMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;
    .param p1, "x1"    # [J
    .param p2, "x2"    # Landroid/view/ActionMode;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PeoplePageFragment;->ignoreFaceAlbum([JLandroid/view/ActionMode;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeoplePagePhotoLoaderCallback:Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mDisplayPeopleMode:Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/ui/PeoplePageFragment;Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;)Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;
    .param p1, "x1"    # Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mDisplayPeopleMode:Lcom/miui/gallery/ui/PeoplePageFragment$DisplayPeopleMode;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeopleGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/adapter/PeoplePageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeoplePageAdapter:Lcom/miui/gallery/adapter/PeoplePageAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/PeoplePageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mInMarkMode:Z

    return v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/model/PeopleContactInfo$Relation;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mMarkRelation:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/PeoplePageFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mMarkName:Ljava/lang/String;

    return-object v0
.end method

.method private finishWithMarkSuccessResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "peopleLocalId"    # Ljava/lang/String;
    .param p2, "peopleServerId"    # Ljava/lang/String;
    .param p3, "originName"    # Ljava/lang/String;
    .param p4, "markName"    # Ljava/lang/String;
    .param p5, "relationType"    # I

    .prologue
    .line 820
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c029f

    invoke-static {v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 821
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 822
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "server_id_of_album"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    const-string v1, "local_id_of_album"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    const-string v1, "mark_relation"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 825
    const-string v1, "origin_album_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    const-string v1, "mark_album_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/activity/BaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 828
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    .line 829
    return-void
.end method

.method private finishWithMarkSuccessResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "peopleLocalId"    # Ljava/lang/String;
    .param p2, "peopleServerId"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "originName"    # Ljava/lang/String;
    .param p5, "markName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 806
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c029f

    invoke-static {v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 807
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 808
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "server_id_of_album"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    const-string v1, "local_id_of_album"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    const-string v1, "album_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    const-string v1, "origin_album_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    const-string v1, "mark_album_name"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/activity/BaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 814
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    .line 815
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1, v3, v3}, Lcom/miui/gallery/activity/BaseActivity;->overridePendingTransition(II)V

    .line 816
    return-void
.end method

.method private ignoreFaceAlbum([JLandroid/view/ActionMode;)V
    .locals 6
    .param p1, "selectIds"    # [J
    .param p2, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 709
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v0, p1, v3

    .line 711
    .local v0, "id":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 713
    .end local v0    # "id":J
    :cond_0
    invoke-static {v2}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeIgnorePeopleByIds(Ljava/util/ArrayList;)V

    .line 714
    invoke-virtual {p2}, Landroid/view/ActionMode;->finish()V

    .line 715
    return-void
.end method

.method private mergePeople([JLandroid/view/ActionMode;)V
    .locals 9
    .param p1, "selectIds"    # [J
    .param p2, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 739
    .line 740
    invoke-static {p1}, Lcom/miui/gallery/provider/FaceManager;->getPeopleBasicInfoByIds([J)Ljava/util/ArrayList;

    move-result-object v2

    .line 741
    .local v2, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/provider/FaceManager$BasicPeopleInfo;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 745
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/FaceManager$BasicPeopleInfo;

    .line 746
    .local v0, "info":Lcom/miui/gallery/provider/FaceManager$BasicPeopleInfo;
    new-instance v4, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    iget v5, v0, Lcom/miui/gallery/provider/FaceManager$BasicPeopleInfo;->id:I

    int-to-long v6, v5

    iget-object v5, v0, Lcom/miui/gallery/provider/FaceManager$BasicPeopleInfo;->serverId:Ljava/lang/String;

    iget-object v8, v0, Lcom/miui/gallery/provider/FaceManager$BasicPeopleInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v7, v5, v8}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 749
    .end local v0    # "info":Lcom/miui/gallery/provider/FaceManager$BasicPeopleInfo;
    :cond_2
    new-instance v3, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    iget-object v4, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    new-instance v5, Lcom/miui/gallery/ui/PeoplePageFragment$6;

    invoke-direct {v5, p0, p2}, Lcom/miui/gallery/ui/PeoplePageFragment$6;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment;Landroid/view/ActionMode;)V

    invoke-direct {v3, v4, v1, v5}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler$ConfirmListener;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mFaceAlbumRenameHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    .line 762
    iget-object v3, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mFaceAlbumRenameHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->show()V

    goto :goto_0
.end method

.method private showAndSetRelationDialog([JLandroid/view/ActionMode;)V
    .locals 6
    .param p1, "selectIds"    # [J
    .param p2, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 766
    const/4 v1, 0x0

    .line 767
    .local v1, "defaultRelation":Ljava/lang/String;
    const/4 v0, 0x0

    .line 768
    .local v0, "contact":Lcom/miui/gallery/model/PeopleContactInfo;
    array-length v3, p1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 769
    const/4 v3, 0x0

    aget-wide v4, p1, v3

    invoke-static {v4, v5}, Lcom/miui/gallery/provider/FaceManager;->queryContactInfoOfOnePerson(J)Lcom/miui/gallery/model/PeopleContactInfo;

    move-result-object v0

    .line 770
    if-eqz v0, :cond_0

    .line 771
    iget-object v1, v0, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMeText:Ljava/lang/String;

    .line 774
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v4, 0x7f0c048a

    invoke-virtual {v3, v4}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    array-length v4, p1

    new-instance v5, Lcom/miui/gallery/ui/PeoplePageFragment$7;

    invoke-direct {v5, p0, p2, p1}, Lcom/miui/gallery/ui/PeoplePageFragment$7;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment;Landroid/view/ActionMode;[J)V

    invoke-static {v3, v2, v1, v4, v5}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->createRelationSetDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;)V

    .line 790
    return-void
.end method

.method private showIgnoreFaceAlbumAlert([JLandroid/view/ActionMode;)Z
    .locals 7
    .param p1, "selectIds"    # [J
    .param p2, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 718
    new-instance v1, Lcom/miui/gallery/ui/PeoplePageFragment$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gallery/ui/PeoplePageFragment$4;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment;[JLandroid/view/ActionMode;)V

    .line 726
    .local v1, "confirmListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/miui/gallery/ui/PeoplePageFragment$5;

    invoke-direct {v2, p0, p2}, Lcom/miui/gallery/ui/PeoplePageFragment$5;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment;Landroid/view/ActionMode;)V

    .line 732
    .local v2, "cancelListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-string v3, ""

    iget-object v4, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v5, 0x7f0c0258

    .line 733
    invoke-virtual {v4, v5}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v6, 0x104000a

    .line 734
    invoke-virtual {v5, v6}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x1040000

    .line 732
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/DialogUtil;->showConfirmAlertWithCancel(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/app/AlertDialog;

    .line 735
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    const-string v0, "people"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f0c0336

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 543
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 544
    new-instance v5, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;

    invoke-direct {v5, p0, v9}, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment;Lcom/miui/gallery/ui/PeoplePageFragment$1;)V

    iput-object v5, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeoplePagePhotoLoaderCallback:Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;

    .line 546
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isFaceAlbumEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 547
    iget-object v5, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mShowEmptyViewHelper:Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;

    iget-object v6, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mEmptyViewStub:Landroid/view/ViewStub;

    invoke-static {v5, v6, v8}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->access$1500(Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;Landroid/view/ViewStub;Z)Landroid/view/View;

    move-result-object v0

    .line 548
    .local v0, "emptyView":Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 549
    iget-object v5, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeopleGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVisibility(I)V

    .line 554
    .end local v0    # "emptyView":Landroid/view/View;
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v5}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 555
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 556
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 557
    .local v4, "uri":Landroid/net/Uri;
    const-string v5, "markMode"

    invoke-virtual {v4, v5, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mInMarkMode:Z

    .line 558
    iget-boolean v5, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mInMarkMode:Z

    if-eqz v5, :cond_2

    .line 559
    const-string v5, "markName"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mMarkName:Ljava/lang/String;

    .line 560
    const-string v5, "markRelation"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, "markRelation":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 562
    invoke-static {v2}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelationType(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelation(I)Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mMarkRelation:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 563
    iget-object v5, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mMarkRelation:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    sget-object v6, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->unknown:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    if-ne v5, v6, :cond_0

    .line 564
    const-string v5, "PeoplePageFragment"

    const-string v6, "Do not support mark unknown group type"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iput-object v9, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mMarkRelation:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 568
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mMarkName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mMarkRelation:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    if-nez v5, :cond_1

    .line 569
    const-string v5, "PeoplePageFragment"

    const-string v6, "Couldn\'t find valid mark arguments!"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PeoplePageFragment;->finish()V

    .line 574
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mMarkName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mMarkName:Ljava/lang/String;

    aput-object v6, v5, v7

    .line 575
    invoke-virtual {p0, v10, v5}, Lcom/miui/gallery/ui/PeoplePageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, "title":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v5}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v3}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 582
    .end local v2    # "markRelation":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_2
    return-void

    .line 551
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PeoplePageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeoplePagePhotoLoaderCallback:Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;

    invoke-virtual {v5, v8, v9, v6}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_0

    .line 575
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "markRelation":Ljava/lang/String;
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_4
    iget-object v5, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mMarkRelation:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    if-eqz v5, :cond_5

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mMarkRelation:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 577
    invoke-static {v6}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelationName(Lcom/miui/gallery/model/PeopleContactInfo$Relation;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v10, v5}, Lcom/miui/gallery/ui/PeoplePageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    const v5, 0x7f0c0337

    .line 578
    invoke-virtual {p0, v5}, Lcom/miui/gallery/ui/PeoplePageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 614
    sparse-switch p1, :sswitch_data_0

    .line 631
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 633
    :goto_1
    return-void

    .line 618
    :sswitch_0
    const/4 v0, 0x0

    .line 619
    .local v0, "contact":Lcom/miui/gallery/model/PeopleContactInfo;
    if-eqz p3, :cond_1

    if-ne p2, v3, :cond_1

    .line 620
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1, p3}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->getContactInfo(Landroid/content/Context;Landroid/content/Intent;)Lcom/miui/gallery/model/PeopleContactInfo;

    move-result-object v0

    .line 622
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mFaceAlbumRenameHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->finishWhenGetContact(Lcom/miui/gallery/model/PeopleContactInfo;)V

    goto :goto_1

    .line 626
    .end local v0    # "contact":Lcom/miui/gallery/model/PeopleContactInfo;
    :sswitch_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mMarkMyselfHelper:Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;

    if-eqz v1, :cond_0

    .line 627
    iget-object v2, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mMarkMyselfHelper:Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;

    if-ne p2, v3, :cond_2

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->setLoadMoreMarkResult(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 614
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x13 -> :sswitch_0
        0x29 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 794
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 795
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeopleGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v0

    .line 796
    .local v0, "firstVisibleItemPosition":I
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 797
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeopleGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PeoplePageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setNumColumns(I)V

    .line 801
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeopleGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setSelection(I)V

    .line 802
    return-void

    .line 799
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeopleGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PeoplePageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 834
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeoplePageAdapter:Lcom/miui/gallery/adapter/PeoplePageAdapter;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeoplePageAdapter:Lcom/miui/gallery/adapter/PeoplePageAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 837
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onDestroy()V

    .line 838
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 208
    const v1, 0x7f0400e8

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f12008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeopleGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .line 210
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeopleGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setHeadersIgnorePadding(Z)V

    .line 211
    new-instance v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v2, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeopleGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-direct {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeopleGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .line 212
    new-instance v1, Lcom/miui/gallery/adapter/PeoplePageAdapter;

    iget-object v2, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v1, v2}, Lcom/miui/gallery/adapter/PeoplePageAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeoplePageAdapter:Lcom/miui/gallery/adapter/PeoplePageAdapter;

    .line 213
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeopleGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v2, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeoplePageAdapter:Lcom/miui/gallery/adapter/PeoplePageAdapter;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 214
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeopleGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v2, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 215
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeopleGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setChoiceMode(I)V

    .line 216
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeopleGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v2, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mChoiceModeListener:Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setMultiChoiceModeListener(Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;)V

    .line 217
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mPeopleGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAreHeadersSticky(Z)V

    .line 219
    const v1, 0x7f120189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mEmptyViewStub:Landroid/view/ViewStub;

    .line 220
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04013c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mFooterView:Landroid/view/View;

    .line 222
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mFooterView:Landroid/view/View;

    new-instance v2, Lcom/miui/gallery/ui/PeoplePageFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/PeoplePageFragment$1;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 599
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 605
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 601
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-class v3, Lcom/miui/gallery/activity/facebaby/IgnorePeoplePageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 603
    const/4 v0, 0x1

    goto :goto_0

    .line 599
    nop

    :pswitch_data_0
    .packed-switch 0x7f120306
        :pswitch_0
    .end packed-switch
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 586
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onStop()V

    .line 587
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mMarkMyselfHelper:Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment;->mMarkMyselfHelper:Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->onStop()V

    .line 590
    :cond_0
    return-void
.end method
