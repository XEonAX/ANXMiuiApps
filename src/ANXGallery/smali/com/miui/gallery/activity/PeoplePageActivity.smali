.class public Lcom/miui/gallery/activity/PeoplePageActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "PeoplePageActivity.java"


# instance fields
.field private final mMainHandler:Landroid/os/Handler;

.field mPeopleFragment:Lcom/miui/gallery/ui/PeoplePageFragment;

.field private mRequestSyncRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/activity/PeoplePageActivity;->mMainHandler:Landroid/os/Handler;

    .line 19
    new-instance v0, Lcom/miui/gallery/activity/PeoplePageActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/activity/PeoplePageActivity$1;-><init>(Lcom/miui/gallery/activity/PeoplePageActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/activity/PeoplePageActivity;->mRequestSyncRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/activity/PeoplePageActivity;->mPeopleFragment:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/ui/PeoplePageFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 64
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f0400e9

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/PeoplePageActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/activity/PeoplePageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f120214

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PeoplePageFragment;

    iput-object v0, p0, Lcom/miui/gallery/activity/PeoplePageActivity;->mPeopleFragment:Lcom/miui/gallery/ui/PeoplePageFragment;

    .line 31
    iget-object v0, p0, Lcom/miui/gallery/activity/PeoplePageActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gallery/activity/PeoplePageActivity;->mRequestSyncRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/PeoplePageActivity;->setImmersionMenuEnabled(Z)V

    .line 33
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/activity/PeoplePageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 43
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f130007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 44
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onDestroy()V

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/activity/PeoplePageActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gallery/activity/PeoplePageActivity;->mRequestSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/activity/PeoplePageActivity;->mPeopleFragment:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PeoplePageFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onResume()V

    .line 38
    return-void
.end method
