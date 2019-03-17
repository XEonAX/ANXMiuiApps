.class public Lcom/miui/gallery/picker/PickRecentDiscoveryActivity;
.super Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;
.source "PickRecentDiscoveryActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, -0x1

    .line 16
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 17
    iget-object v4, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    if-nez v4, :cond_1

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 20
    :cond_1
    const v4, 0x7f04010a

    invoke-virtual {p0, v4}, Lcom/miui/gallery/picker/PickRecentDiscoveryActivity;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickRecentDiscoveryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f12024e

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/picker/PickRecentDiscoveryFragment;

    iput-object v4, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryActivity;->mAlbumDetailFragment:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    .line 22
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickRecentDiscoveryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 23
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "album_id"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 24
    .local v0, "albumId":J
    const-string v4, "album_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "albumName":Ljava/lang/String;
    cmp-long v4, v0, v6

    if-nez v4, :cond_2

    .line 26
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickRecentDiscoveryActivity;->finish()V

    goto :goto_0

    .line 29
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryActivity;->mAlbumDetailFragment:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    iget-object v5, p0, Lcom/miui/gallery/picker/PickRecentDiscoveryActivity;->mItemStateListener:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$ItemStateListener;

    invoke-virtual {v4, v5}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->setItemStateListener(Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$ItemStateListener;)V

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 31
    invoke-virtual {p0, v2}, Lcom/miui/gallery/picker/PickRecentDiscoveryActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
