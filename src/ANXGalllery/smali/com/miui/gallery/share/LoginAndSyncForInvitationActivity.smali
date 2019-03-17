.class public Lcom/miui/gallery/share/LoginAndSyncForInvitationActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "LoginAndSyncForInvitationActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected allowUseOnOffline()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method protected hasCustomContentView()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance v0, Lcom/miui/gallery/share/LoginAndSyncForInvitationFragment;

    invoke-direct {v0}, Lcom/miui/gallery/share/LoginAndSyncForInvitationFragment;-><init>()V

    .line 19
    .local v0, "fragment":Lcom/miui/gallery/share/LoginAndSyncForInvitationFragment;
    invoke-virtual {p0}, Lcom/miui/gallery/share/LoginAndSyncForInvitationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/gallery/share/LoginAndSyncForInvitationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/miui/gallery/share/LoginAndSyncForInvitationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 21
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const-string v2, "LoginAndSyncForInvitationFragment"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 22
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 23
    return-void
.end method
