.class public Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "StoryAlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnScrollListener"
.end annotation


# instance fields
.field private mActionBarBackgroundChangedPosition:I

.field private mActionBarTitleChangedPosition:I

.field private mFirstVisisbleItem:Landroid/view/View;

.field private mHeaderViewBottomPrePosition:I

.field private mIsChangedPositionInited:Z

.field private mPlayIconChangedPosition:I

.field final synthetic this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 915
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method private initChangedPosition()V
    .locals 6

    .prologue
    .line 924
    iget-boolean v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mIsChangedPositionInited:Z

    if-eqz v3, :cond_1

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-eqz v3, :cond_0

    .line 930
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mIsChangedPositionInited:Z

    .line 931
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 932
    .local v1, "statusBarHeight":I
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7100(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$1000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->getBottom()I

    move-result v4

    sub-int v2, v3, v4

    .line 933
    .local v2, "titleHeaderHeight":I
    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$3200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->getActionBarHeight()I

    move-result v0

    .line 934
    .local v0, "actionBarHeight":I
    add-int v3, v1, v0

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$1000(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/card/ui/detail/SlideShowHeaderView;->getPlayIcon()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 935
    invoke-virtual {v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b032e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    iput v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mPlayIconChangedPosition:I

    .line 936
    add-int v3, v1, v0

    add-int/2addr v3, v2

    iput v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mActionBarBackgroundChangedPosition:I

    .line 937
    add-int v3, v1, v0

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 938
    invoke-virtual {v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0327

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mActionBarTitleChangedPosition:I

    goto :goto_0
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "scrollState"    # I

    .prologue
    .line 943
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 948
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mFirstVisisbleItem:Landroid/view/View;

    if-nez v1, :cond_0

    .line 949
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mFirstVisisbleItem:Landroid/view/View;

    .line 952
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mFirstVisisbleItem:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 953
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mFirstVisisbleItem:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 955
    .local v0, "position":I
    iget v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mHeaderViewBottomPrePosition:I

    if-lez v1, :cond_3

    .line 956
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->initChangedPosition()V

    .line 958
    iget v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mHeaderViewBottomPrePosition:I

    iget v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mPlayIconChangedPosition:I

    if-lt v1, v2, :cond_5

    iget v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mPlayIconChangedPosition:I

    if-gt v0, v1, :cond_5

    .line 959
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1, v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7302(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Z)Z

    .line 960
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$2900(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    .line 966
    :cond_1
    :goto_0
    iget v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mHeaderViewBottomPrePosition:I

    iget v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mActionBarBackgroundChangedPosition:I

    if-lt v1, v2, :cond_6

    iget v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mActionBarBackgroundChangedPosition:I

    if-gt v0, v1, :cond_6

    .line 967
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1, v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$4702(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Z)Z

    .line 971
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$3200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->access$3300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;)V

    .line 973
    iget v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mHeaderViewBottomPrePosition:I

    iget v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mActionBarTitleChangedPosition:I

    if-lt v1, v2, :cond_7

    iget v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mActionBarTitleChangedPosition:I

    if-gt v0, v1, :cond_7

    .line 974
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$3200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->startActionBarTitleAnim(Z)V

    .line 979
    :cond_3
    :goto_2
    iput v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mHeaderViewBottomPrePosition:I

    .line 981
    .end local v0    # "position":I
    :cond_4
    return-void

    .line 961
    .restart local v0    # "position":I
    :cond_5
    iget v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mHeaderViewBottomPrePosition:I

    iget v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mPlayIconChangedPosition:I

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mPlayIconChangedPosition:I

    if-lt v0, v1, :cond_1

    .line 962
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1, v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$7302(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Z)Z

    .line 963
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$2900(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    goto :goto_0

    .line 968
    :cond_6
    iget v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mHeaderViewBottomPrePosition:I

    iget v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mActionBarBackgroundChangedPosition:I

    if-gt v1, v2, :cond_2

    iget v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mActionBarBackgroundChangedPosition:I

    if-lt v0, v1, :cond_2

    .line 969
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1, v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$4702(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Z)Z

    goto :goto_1

    .line 975
    :cond_7
    iget v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mHeaderViewBottomPrePosition:I

    iget v2, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mActionBarTitleChangedPosition:I

    if-gt v1, v2, :cond_3

    iget v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->mActionBarTitleChangedPosition:I

    if-lt v0, v1, :cond_3

    .line 976
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$3200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->startActionBarTitleAnim(Z)V

    goto :goto_2
.end method
