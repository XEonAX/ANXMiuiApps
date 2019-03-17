.class public abstract Lcom/miui/gallery/ui/BaseBottomMenuFragment;
.super Lcom/miui/gallery/app/BottomMenuFragment;
.source "BaseBottomMenuFragment.java"


# instance fields
.field protected mActivity:Lcom/miui/gallery/activity/BaseActivity;

.field protected mUserFirstVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/miui/gallery/app/BottomMenuFragment;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->mUserFirstVisible:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public abstract getPageName()Ljava/lang/String;
.end method

.method protected getThemeRes()I
    .locals 1

    .prologue
    .line 28
    const v0, 0x7f110012

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/miui/gallery/app/BottomMenuFragment;->onAttach(Landroid/app/Activity;)V

    .line 40
    check-cast p1, Lcom/miui/gallery/activity/BaseActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 41
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/miui/gallery/app/BottomMenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->getThemeRes()I

    move-result v0

    .line 22
    .local v0, "themeRes":I
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->setThemeRes(I)V

    .line 25
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/miui/gallery/app/BottomMenuFragment;->onDetach()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 47
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/miui/gallery/app/BottomMenuFragment;->onPause()V

    .line 56
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->useImageLoader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->onPagePause()V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->recordPageByDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 63
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/miui/gallery/app/BottomMenuFragment;->onResume()V

    .line 68
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->useImageLoader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->onPageResume()V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->recordPageByDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 75
    :cond_1
    return-void
.end method

.method protected onUserFirstVisible()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method protected recordPageByDefault()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/miui/gallery/app/BottomMenuFragment;->setUserVisibleHint(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->mUserFirstVisible:Z

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->onUserFirstVisible()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/BaseBottomMenuFragment;->mUserFirstVisible:Z

    .line 84
    :cond_0
    return-void
.end method

.method protected useImageLoader()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method
