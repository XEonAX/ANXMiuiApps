.class public Lcom/miui/gallery/activity/InternalPhotoPageActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "InternalPhotoPageActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private repackageExtras()V
    .locals 4

    .prologue
    .line 40
    invoke-static {}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getInstance()Lcom/miui/gallery/util/photoview/PhotoPageDataCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 41
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 42
    const-string v3, "photo_data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 43
    .local v1, "data":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 44
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 45
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 47
    .end local v1    # "data":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    .line 102
    invoke-virtual {p0, v0, v0}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->overridePendingTransition(II)V

    .line 103
    return-void
.end method

.method protected getFragmentContainerId()I
    .locals 1

    .prologue
    .line 56
    const v0, 0x1020002

    return v0
.end method

.method public getRuntimePermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method protected hasCustomContentView()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityReenter(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "PhotoPageFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageFragment;

    .line 68
    .local v0, "fragment":Lcom/miui/gallery/ui/PhotoPageFragment;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFragment;->onActivityReenter(ILandroid/content/Intent;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 76
    invoke-virtual {p0}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 77
    .local v1, "manager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "PhotoPageFragment"

    .line 79
    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageFragment;

    .line 80
    .local v0, "fragment":Lcom/miui/gallery/ui/PhotoPageFragment;
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 85
    .end local v0    # "fragment":Lcom/miui/gallery/ui/PhotoPageFragment;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 114
    .local v1, "manager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "PhotoPageFragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageFragment;

    .line 116
    .local v0, "fragment":Lcom/miui/gallery/ui/PhotoPageFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    .end local v0    # "fragment":Lcom/miui/gallery/ui/PhotoPageFragment;
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 22
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    if-eqz p1, :cond_0

    .line 24
    invoke-static {}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getInstance()Lcom/miui/gallery/util/photoview/PhotoPageDataCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->restoreInstance(Landroid/os/Bundle;)V

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 27
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->repackageExtras()V

    .line 28
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 29
    const-string v1, "InternalPhotoPageActivity"

    const-string/jumbo v2, "uri shouldn\'t be null"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->finish()V

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->newInstance(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;I)Lcom/miui/gallery/ui/PhotoPageFragment;

    move-result-object v1

    const-string v2, "PhotoPageFragment"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/miui/gallery/activity/InternalPhotoPageActivity;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onDestroy()V

    .line 108
    invoke-static {}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getInstance()Lcom/miui/gallery/util/photoview/PhotoPageDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->clear()V

    .line 109
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onPause()V

    .line 90
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->pause()V

    .line 91
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onResume()V

    .line 96
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->resume()V

    .line 97
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 62
    invoke-static {}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getInstance()Lcom/miui/gallery/util/photoview/PhotoPageDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->saveInstance(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method
