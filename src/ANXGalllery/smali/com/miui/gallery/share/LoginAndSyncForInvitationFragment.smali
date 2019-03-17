.class public Lcom/miui/gallery/share/LoginAndSyncForInvitationFragment;
.super Lcom/miui/gallery/ui/BaseFragment;
.source "LoginAndSyncForInvitationFragment.java"


# instance fields
.field private mPath:Lcom/miui/gallery/share/Path;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/miui/gallery/share/LoginAndSyncForInvitationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 58
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 61
    :cond_0
    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getThemeRes()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 43
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/miui/gallery/share/LoginAndSyncForInvitationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/share/LoginAndSyncForInvitationFragment;->mPath:Lcom/miui/gallery/share/Path;

    invoke-static {v0, v1}, Lcom/miui/gallery/share/AlbumShareInvitationHandler;->acceptShareInvitation(Landroid/app/Activity;Lcom/miui/gallery/share/Path;)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/share/LoginAndSyncForInvitationFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/miui/gallery/share/LoginAndSyncForInvitationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 21
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 22
    const-string v2, "invitation_path"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/share/Path;

    iput-object v2, p0, Lcom/miui/gallery/share/LoginAndSyncForInvitationFragment;->mPath:Lcom/miui/gallery/share/Path;

    .line 25
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/share/LoginAndSyncForInvitationFragment;->mPath:Lcom/miui/gallery/share/Path;

    if-nez v2, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/miui/gallery/share/LoginAndSyncForInvitationFragment;->finish()V

    .line 34
    :goto_0
    return-void

    .line 30
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "key_check_gallery_sync"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    const-string v2, "cloud_guide_source"

    sget-object v3, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;->SHARE_INVITATION:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 33
    invoke-static {p0, v1}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->checkLoginAndSyncState(Landroid/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected recordPageByDefault()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method protected useImageLoader()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method
