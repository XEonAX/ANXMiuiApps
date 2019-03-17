.class public Lcom/miui/gallery/activity/facebaby/FacePageActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "FacePageActivity.java"


# instance fields
.field mFaceFragment:Lcom/miui/gallery/ui/FacePageFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
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
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/FacePageActivity;->mFaceFragment:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/ui/FacePageFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f040077

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/facebaby/FacePageActivity;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/FacePageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f12015d

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/FacePageFragment;

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/FacePageActivity;->mFaceFragment:Lcom/miui/gallery/ui/FacePageFragment;

    .line 22
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/FacePageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 38
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f130003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 39
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/FacePageActivity;->mFaceFragment:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/FacePageFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 62
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onPause()V

    .line 33
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 45
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/FacePageActivity;->mFaceFragment:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/FacePageFragment;->isFaceDisplayMode()Z

    move-result v1

    .line 46
    .local v1, "toPhotoMode":Z
    const v2, 0x7f1202fd

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 47
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 50
    :cond_0
    const v2, 0x7f1202fc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    if-nez v1, :cond_2

    move v2, v3

    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 54
    :cond_1
    return v3

    .line 52
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onResume()V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/facebaby/FacePageActivity;->setImmersionMenuEnabled(Z)V

    .line 28
    return-void
.end method
