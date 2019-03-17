.class Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoritesManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;
    }
.end annotation


# instance fields
.field private mAddCompleteListener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

.field private mFavoriteInfo:Lcom/miui/gallery/model/FavoriteInfo;

.field private mIsToggling:Z

.field private mMenu:Landroid/view/Menu;

.field private mQueryTask:Landroid/os/AsyncTask;

.field private mRemoveCompleteListener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;Landroid/view/Menu;)V
    .locals 2
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3770
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3810
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mAddCompleteListener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .line 3830
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$2;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mRemoveCompleteListener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .line 3771
    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mMenu:Landroid/view/Menu;

    .line 3772
    iget-object v0, p1, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    if-eqz v0, :cond_0

    .line 3773
    iget-object v0, p1, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v1, p1, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->sendQueryTask(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 3775
    :cond_0
    return-void
.end method

.method static synthetic access$6100(Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;
    .param p1, "x1"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 3763
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->sendQueryTask(Lcom/miui/gallery/model/BaseDataItem;)V

    return-void
.end method

.method static synthetic access$6202(Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;
    .param p1, "x1"    # Z

    .prologue
    .line 3763
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mIsToggling:Z

    return p1
.end method

.method static synthetic access$6300(Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    .prologue
    .line 3763
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->usingStrictMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6402(Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;Lcom/miui/gallery/model/FavoriteInfo;)Lcom/miui/gallery/model/FavoriteInfo;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;
    .param p1, "x1"    # Lcom/miui/gallery/model/FavoriteInfo;

    .prologue
    .line 3763
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mFavoriteInfo:Lcom/miui/gallery/model/FavoriteInfo;

    return-object p1
.end method

.method private cancelQueryTask()V
    .locals 2

    .prologue
    .line 3804
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mQueryTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 3805
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mQueryTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3806
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mQueryTask:Landroid/os/AsyncTask;

    .line 3808
    :cond_0
    return-void
.end method

.method private sendQueryTask(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 3797
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mQueryTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mQueryTask:Landroid/os/AsyncTask;

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;->access$5900(Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 3798
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->cancelQueryTask()V

    .line 3799
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;Lcom/miui/gallery/model/BaseDataItem;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$QueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mQueryTask:Landroid/os/AsyncTask;

    .line 3801
    :cond_1
    return-void
.end method

.method private setFavoriteChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 3854
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mMenu:Landroid/view/Menu;

    const v2, 0x7f12030b

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 3855
    .local v0, "favorite":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 3856
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 3858
    :cond_0
    return-void
.end method

.method private setFavoriteVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 3861
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mMenu:Landroid/view/Menu;

    const v2, 0x7f12030b

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 3862
    .local v0, "favorite":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 3863
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3865
    :cond_0
    return-void
.end method

.method private usingStrictMode()Z
    .locals 1

    .prologue
    .line 3942
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$6500(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 0

    .prologue
    .line 3788
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3791
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->cancelQueryTask()V

    .line 3792
    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mAddCompleteListener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .line 3793
    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mRemoveCompleteListener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .line 3794
    return-void
.end method

.method public refreshStatus()V
    .locals 1

    .prologue
    .line 3906
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mFavoriteInfo:Lcom/miui/gallery/model/FavoriteInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mFavoriteInfo:Lcom/miui/gallery/model/FavoriteInfo;

    invoke-virtual {v0}, Lcom/miui/gallery/model/FavoriteInfo;->isFavoriteUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3907
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->setFavoriteVisible(Z)V

    .line 3909
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mFavoriteInfo:Lcom/miui/gallery/model/FavoriteInfo;

    invoke-virtual {v0}, Lcom/miui/gallery/model/FavoriteInfo;->isFavorite()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->setFavoriteChecked(Z)V

    .line 3913
    :goto_0
    return-void

    .line 3911
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->setFavoriteVisible(Z)V

    goto :goto_0
.end method

.method public show()V
    .locals 0

    .prologue
    .line 3784
    return-void
.end method

.method public toggle()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 3869
    iget-boolean v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mIsToggling:Z

    if-eqz v4, :cond_1

    .line 3870
    const-string v3, "PhotoPageFragment"

    const-string/jumbo v4, "skip frequent toggle"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3902
    :cond_0
    :goto_0
    return-void

    .line 3874
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v5, v5, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v6, v6, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v6}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/PhotoPageFragment;->isProcessingMedia(Lcom/miui/gallery/model/BaseDataItem;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3875
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v4, 0x7f0c0302

    invoke-static {v3, v4}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0

    .line 3879
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mMenu:Landroid/view/Menu;

    const v5, 0x7f12030b

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 3880
    .local v1, "menuItem":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 3883
    iput-boolean v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mIsToggling:Z

    .line 3884
    invoke-interface {v1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    .line 3885
    .local v2, "originalChecked":Z
    if-nez v2, :cond_3

    :goto_1
    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->setFavoriteChecked(Z)V

    .line 3886
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataSet()Lcom/miui/gallery/model/BaseDataSet;

    move-result-object v0

    .line 3887
    .local v0, "dataSet":Lcom/miui/gallery/model/BaseDataSet;
    if-eqz v0, :cond_0

    .line 3888
    if-nez v2, :cond_4

    .line 3889
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mAddCompleteListener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    invoke-virtual {v0, v3, v4, v5}, Lcom/miui/gallery/model/BaseDataSet;->addToFavorites(Landroid/app/Activity;ILcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)Z

    .line 3890
    const-string v3, "favorites"

    const-string v4, "add_to_favorites"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3885
    .end local v0    # "dataSet":Lcom/miui/gallery/model/BaseDataSet;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 3895
    .restart local v0    # "dataSet":Lcom/miui/gallery/model/BaseDataSet;
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mRemoveCompleteListener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    invoke-virtual {v0, v3, v4, v5}, Lcom/miui/gallery/model/BaseDataSet;->removeFromFavorites(Landroid/app/Activity;ILcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)Z

    .line 3896
    const-string v3, "favorites"

    const-string v4, "remove_from_favorites"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateItem(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 3778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->mFavoriteInfo:Lcom/miui/gallery/model/FavoriteInfo;

    .line 3779
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->sendQueryTask(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 3780
    return-void
.end method
