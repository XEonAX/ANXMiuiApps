.class public Lcom/miui/gallery/picker/PickAlbumDetailActivity;
.super Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;
.source "PickAlbumDetailActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v10, -0x1

    const/4 v8, 0x0

    .line 15
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 16
    iget-object v6, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    if-nez v6, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    const v6, 0x7f040104

    invoke-virtual {p0, v6}, Lcom/miui/gallery/picker/PickAlbumDetailActivity;->setContentView(I)V

    .line 20
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const v7, 0x7f12008e

    .line 21
    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    iput-object v6, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivity;->mAlbumDetailFragment:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    .line 22
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 23
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "album_id"

    invoke-virtual {v3, v6, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 24
    .local v0, "albumId":J
    const-string v6, "album_name"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "albumName":Ljava/lang/String;
    const-string v6, "other_share_album"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 26
    .local v4, "isOtherSharedAlbum":Z
    const-string v6, "pano_album"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 27
    .local v5, "isPanoAlbum":Z
    cmp-long v6, v0, v10

    if-nez v6, :cond_2

    .line 28
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivity;->finish()V

    goto :goto_0

    .line 31
    :cond_2
    iget-object v6, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivity;->mAlbumDetailFragment:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    iget-object v7, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivity;->mItemStateListener:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$ItemStateListener;

    invoke-virtual {v6, v7}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->setItemStateListener(Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$ItemStateListener;)V

    .line 32
    iget-object v6, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivity;->mAlbumDetailFragment:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    check-cast v6, Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    invoke-virtual {v6, v0, v1}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->setAlbumId(J)V

    .line 33
    iget-object v6, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivity;->mAlbumDetailFragment:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    check-cast v6, Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    invoke-virtual {v6, v4}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->setIsOtherSharedAlbum(Z)V

    .line 34
    iget-object v6, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivity;->mAlbumDetailFragment:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    check-cast v6, Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    invoke-virtual {v6, v5}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->setIsPanoAlbum(Z)V

    .line 35
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 36
    invoke-virtual {p0, v2}, Lcom/miui/gallery/picker/PickAlbumDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
