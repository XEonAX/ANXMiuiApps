.class public abstract Lcom/miui/gallery/ui/BaseFragment;
.super Lmiui/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field protected mActivity:Lcom/miui/gallery/activity/BaseActivity;

.field protected mUserFirstVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lmiui/app/Fragment;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/BaseFragment;->mUserFirstVisible:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public abstract getPageName()Ljava/lang/String;
.end method

.method protected getThemeRes()I
    .locals 1

    .prologue
    .line 27
    const v0, 0x7f110012

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lmiui/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 39
    check-cast p1, Lcom/miui/gallery/activity/BaseActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/miui/gallery/ui/BaseFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 40
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lmiui/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseFragment;->getThemeRes()I

    move-result v0

    .line 21
    .local v0, "themeRes":I
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BaseFragment;->setThemeRes(I)V

    .line 24
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lmiui/app/Fragment;->onDetach()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/BaseFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 46
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Lmiui/app/Fragment;->onPause()V

    .line 55
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseFragment;->useImageLoader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->onPagePause()V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseFragment;->recordPageByDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseFragment;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 62
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lmiui/app/Fragment;->onResume()V

    .line 67
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseFragment;->useImageLoader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->onPageResume()V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseFragment;->recordPageByDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseFragment;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 74
    :cond_1
    return-void
.end method

.method protected onUserFirstVisible()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method protected recordPageByDefault()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 78
    invoke-super {p0, p1}, Lmiui/app/Fragment;->setUserVisibleHint(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/BaseFragment;->mUserFirstVisible:Z

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseFragment;->onUserFirstVisible()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/BaseFragment;->mUserFirstVisible:Z

    .line 83
    :cond_0
    return-void
.end method

.method protected useImageLoader()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method
