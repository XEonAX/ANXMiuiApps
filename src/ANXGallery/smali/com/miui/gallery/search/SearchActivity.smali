.class public Lcom/miui/gallery/search/SearchActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "SearchActivity.java"


# instance fields
.field mSearchFragment:Lcom/miui/gallery/search/SearchFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFragmentContainerId()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x1020002

    return v0
.end method

.method protected hasCustomContentView()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/search/SearchActivity;->mSearchFragment:Lcom/miui/gallery/search/SearchFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/search/SearchFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 56
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/search/SearchActivity;->mSearchFragment:Lcom/miui/gallery/search/SearchFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/search/SearchFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onBackPressed()V

    .line 47
    invoke-static {}, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;->supportSharedElementTransition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const/high16 v0, 0x7f050000

    const v1, 0x7f050001

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/search/SearchActivity;->overridePendingTransition(II)V

    .line 51
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 20
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/miui/gallery/search/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v3, "RootFragment"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/search/SearchFragment;

    iput-object v1, p0, Lcom/miui/gallery/search/SearchActivity;->mSearchFragment:Lcom/miui/gallery/search/SearchFragment;

    .line 23
    iget-object v1, p0, Lcom/miui/gallery/search/SearchActivity;->mSearchFragment:Lcom/miui/gallery/search/SearchFragment;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/miui/gallery/search/SearchFragment;

    invoke-direct {v1}, Lcom/miui/gallery/search/SearchFragment;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/search/SearchActivity;->mSearchFragment:Lcom/miui/gallery/search/SearchFragment;

    .line 25
    iget-object v1, p0, Lcom/miui/gallery/search/SearchActivity;->mSearchFragment:Lcom/miui/gallery/search/SearchFragment;

    const-string v3, "RootFragment"

    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/miui/gallery/search/SearchActivity;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ZZ)V

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/search/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "usingSpecialAnimation"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 29
    .local v0, "usingSpecialAnimation":Z
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;->supportSharedElementTransition()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    iget-object v1, p0, Lcom/miui/gallery/search/SearchActivity;->mSearchFragment:Lcom/miui/gallery/search/SearchFragment;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/search/SearchFragment;->getSharedElementCallback(Z)Landroid/support/v4/app/SharedElementCallback;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V

    .line 31
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->postponeEnterTransition(Landroid/app/Activity;)V

    .line 33
    :cond_2
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/SearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 38
    iget-object v0, p0, Lcom/miui/gallery/search/SearchActivity;->mSearchFragment:Lcom/miui/gallery/search/SearchFragment;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/miui/gallery/search/SearchActivity;->mSearchFragment:Lcom/miui/gallery/search/SearchFragment;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/SearchFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 41
    :cond_0
    return-void
.end method
