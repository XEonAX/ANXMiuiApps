.class public Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "StoryAlbumActivity.java"


# instance fields
.field private mStoryAlbumFragment:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private isValidCard(Lcom/miui/gallery/card/Card;)Z
    .locals 1
    .param p1, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->getSelectedMediaSha1s()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/card/Card;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getFragmentContainerId()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x1020002

    return v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->mStoryAlbumFragment:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->mStoryAlbumFragment:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->onAttachDialogFragment(Landroid/app/Fragment;)V

    .line 55
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "card_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 22
    .local v2, "cardId":J
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f1000e1

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 23
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/miui/gallery/card/CardManager;->getCardByCardId(J)Lcom/miui/gallery/card/Card;

    move-result-object v1

    .line 24
    .local v1, "card":Lcom/miui/gallery/card/Card;
    invoke-direct {p0, v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->isValidCard(Lcom/miui/gallery/card/Card;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->finish()V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-static {}, Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;->getInstance()Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;

    move-result-object v4

    invoke-static {v1}, Lcom/miui/gallery/card/CardUtil;->getMovieTemplateFromCard(Lcom/miui/gallery/card/Card;)I

    move-result v5

    invoke-virtual {v4, p0, v5}, Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;->downloadTemplate(Landroid/content/Context;I)V

    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "StoryAlbumFragment"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    iput-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->mStoryAlbumFragment:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 31
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->mStoryAlbumFragment:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    if-nez v4, :cond_0

    .line 32
    new-instance v4, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-direct {v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;-><init>()V

    iput-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->mStoryAlbumFragment:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "card_id"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 35
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->mStoryAlbumFragment:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-virtual {v4, v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->mStoryAlbumFragment:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    const-string v5, "StoryAlbumFragment"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method
