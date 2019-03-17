.class public Lcom/miui/gallery/activity/facebaby/BabyAlbumDetailActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "BabyAlbumDetailActivity.java"


# instance fields
.field private mAlbumDetailFragment:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;


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
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumDetailActivity;->mAlbumDetailFragment:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 26
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f040027

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumDetailActivity;->setContentView(I)V

    .line 20
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f1200c7

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumDetailActivity;->mAlbumDetailFragment:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .line 21
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumDetailActivity;->mAlbumDetailFragment:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/BabyAlbumDetailActivity;->mAlbumDetailFragment:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
