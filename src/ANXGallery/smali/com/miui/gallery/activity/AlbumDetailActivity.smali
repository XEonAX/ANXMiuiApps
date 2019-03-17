.class public Lcom/miui/gallery/activity/AlbumDetailActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "AlbumDetailActivity.java"


# instance fields
.field private mAlbumDetailFragment:Lcom/miui/gallery/ui/AlbumDetailFragment;


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
    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/activity/AlbumDetailActivity;->mAlbumDetailFragment:Lcom/miui/gallery/ui/AlbumDetailFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/ui/AlbumDetailFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/activity/AlbumDetailActivity;->mAlbumDetailFragment:Lcom/miui/gallery/ui/AlbumDetailFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumDetailFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onBackPressed()V

    .line 60
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v3, 0x7f04000a

    invoke-virtual {p0, v3}, Lcom/miui/gallery/activity/AlbumDetailActivity;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Lcom/miui/gallery/activity/AlbumDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 23
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 25
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 26
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "albumServerId":Ljava/lang/String;
    const-string v3, "album_server_id"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .end local v0    # "albumServerId":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/activity/AlbumDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f12008e

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/ui/AlbumDetailFragment;

    iput-object v3, p0, Lcom/miui/gallery/activity/AlbumDetailActivity;->mAlbumDetailFragment:Lcom/miui/gallery/ui/AlbumDetailFragment;

    .line 32
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/activity/AlbumDetailActivity;->mAlbumDetailFragment:Lcom/miui/gallery/ui/AlbumDetailFragment;

    invoke-virtual {p0}, Lcom/miui/gallery/activity/AlbumDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/ui/AlbumDetailFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onDestroy()V

    .line 71
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/gallery/activity/AlbumDetailActivity;->mAlbumDetailFragment:Lcom/miui/gallery/ui/AlbumDetailFragment;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 52
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
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/activity/AlbumDetailActivity;->mAlbumDetailFragment:Lcom/miui/gallery/ui/AlbumDetailFragment;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 43
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
