.class public Lcom/miui/gallery/activity/CleanerPhotoPickActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "CleanerPhotoPickActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private startFragmentByType(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    packed-switch p1, :pswitch_data_0

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 29
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/activity/CleanerPhotoPickActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SlimPhotoPickFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 30
    .local v0, "fragment":Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment;-><init>()V

    .line 32
    .restart local v0    # "fragment":Landroid/app/Fragment;
    const-string v1, "SlimPhotoPickFragment"

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/miui/gallery/activity/CleanerPhotoPickActivity;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 36
    .end local v0    # "fragment":Landroid/app/Fragment;
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery/activity/CleanerPhotoPickActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ScreenshotPhotoPickFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 37
    .restart local v0    # "fragment":Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/miui/gallery/ui/ScreenshotPhotoPickFragment;-><init>()V

    .line 39
    .restart local v0    # "fragment":Landroid/app/Fragment;
    const-string v1, "ScreenshotPhotoPickFragment"

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/miui/gallery/activity/CleanerPhotoPickActivity;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getFragmentContainerId()I
    .locals 1

    .prologue
    .line 49
    const v0, 0x1020002

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/miui/gallery/activity/CleanerPhotoPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_cleaner_photo_pick_type"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 20
    .local v0, "type":I
    invoke-direct {p0, v0}, Lcom/miui/gallery/activity/CleanerPhotoPickActivity;->startFragmentByType(I)V

    .line 21
    iget-object v1, p0, Lcom/miui/gallery/activity/CleanerPhotoPickActivity;->mActionBar:Lmiui/app/ActionBar;

    const v2, 0x7f040047

    invoke-virtual {v1, v2}, Lmiui/app/ActionBar;->setCustomView(I)V

    .line 22
    iget-object v1, p0, Lcom/miui/gallery/activity/CleanerPhotoPickActivity;->mActionBar:Lmiui/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 23
    return-void
.end method
