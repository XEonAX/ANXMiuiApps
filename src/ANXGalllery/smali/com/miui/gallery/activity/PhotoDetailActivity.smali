.class public Lcom/miui/gallery/activity/PhotoDetailActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "PhotoDetailActivity.java"


# instance fields
.field private mPhotoDetailFragment:Lcom/miui/gallery/ui/PhotoDetailFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
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
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/activity/PhotoDetailActivity;->mPhotoDetailFragment:Lcom/miui/gallery/ui/PhotoDetailFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoDetailFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/gallery/activity/PhotoDetailActivity;->mPhotoDetailFragment:Lcom/miui/gallery/ui/PhotoDetailFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f0400f0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/PhotoDetailActivity;->setContentView(I)V

    .line 20
    invoke-virtual {p0}, Lcom/miui/gallery/activity/PhotoDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f12022f

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PhotoDetailFragment;

    iput-object v0, p0, Lcom/miui/gallery/activity/PhotoDetailActivity;->mPhotoDetailFragment:Lcom/miui/gallery/ui/PhotoDetailFragment;

    .line 21
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/activity/PhotoDetailActivity;->mPhotoDetailFragment:Lcom/miui/gallery/ui/PhotoDetailFragment;

    invoke-virtual {p0}, Lcom/miui/gallery/activity/PhotoDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/activity/PhotoDetailActivity;->mPhotoDetailFragment:Lcom/miui/gallery/ui/PhotoDetailFragment;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/activity/PhotoDetailActivity;->mPhotoDetailFragment:Lcom/miui/gallery/ui/PhotoDetailFragment;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 32
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected supportShowOnScreenLocked()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method
