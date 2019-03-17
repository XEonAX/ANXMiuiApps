.class public Lcom/miui/gallery/activity/RecentDiscoveryActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "RecentDiscoveryActivity.java"


# instance fields
.field private mRecentDiscoveryFragment:Lcom/miui/gallery/ui/RecentDiscoveryFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/activity/RecentDiscoveryActivity;->mRecentDiscoveryFragment:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 45
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f040113

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/RecentDiscoveryActivity;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Lcom/miui/gallery/activity/RecentDiscoveryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f12024e

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    iput-object v0, p0, Lcom/miui/gallery/activity/RecentDiscoveryActivity;->mRecentDiscoveryFragment:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    .line 23
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/activity/RecentDiscoveryActivity;->mRecentDiscoveryFragment:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    invoke-virtual {p0}, Lcom/miui/gallery/activity/RecentDiscoveryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/activity/RecentDiscoveryActivity;->mRecentDiscoveryFragment:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/activity/RecentDiscoveryActivity;->mRecentDiscoveryFragment:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 34
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
