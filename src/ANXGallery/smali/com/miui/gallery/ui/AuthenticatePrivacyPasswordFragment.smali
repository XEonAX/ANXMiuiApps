.class public Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;
.super Landroid/app/Fragment;
.source "AuthenticatePrivacyPasswordFragment.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mChooseLockSettingsHelper:Lcom/miui/privacy/LockSettingsHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->authenticatePrivacyPassword()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->setResult(I)V

    return-void
.end method

.method private authenticatePrivacyPassword()V
    .locals 7

    .prologue
    const v4, 0x7f0c02f9

    const v3, 0x7f0c00ca

    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->mChooseLockSettingsHelper:Lcom/miui/privacy/LockSettingsHelper;

    invoke-virtual {v0}, Lcom/miui/privacy/LockSettingsHelper;->isPrivacyPasswordEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Secret;->isFirstUsePrivacyPassword()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 109
    .local v6, "res":Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/miui/gallery/preference/GalleryPreferences$Secret;->setIsFirstUsePrivacyPassword(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c0467

    .line 111
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0466

    .line 112
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment$2;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment$2;-><init>(Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;)V

    .line 110
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/ConfirmDialog;->showConfirmDialog(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V

    .line 166
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const/16 v0, 0x1b

    invoke-static {p0, v0}, Lcom/miui/privacy/LockSettingsHelper;->startAuthenticatePasswordActivity(Landroid/app/Fragment;I)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Secret;->isFirstUsePrivacyPassword()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 139
    .restart local v6    # "res":Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/miui/gallery/preference/GalleryPreferences$Secret;->setIsFirstUsePrivacyPassword(Z)V

    .line 140
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c046e

    .line 141
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c046c

    .line 142
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment$3;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment$3;-><init>(Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;)V

    .line 140
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/ConfirmDialog;->showConfirmDialog(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V

    goto :goto_0

    .line 161
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_3
    const/16 v0, 0x1c

    invoke-static {p0, v0}, Lcom/miui/privacy/LockSettingsHelper;->startSetPrivacyPasswordActivity(Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method private setResult(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 175
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 176
    const/16 v2, 0x24

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, p1, v1}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 179
    return-void

    .line 176
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showPasswordUpdateDialog()V
    .locals 7

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 65
    .local v6, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$Secret;->setIsFirstUsePrivacyPassword(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->mChooseLockSettingsHelper:Lcom/miui/privacy/LockSettingsHelper;

    .line 67
    invoke-virtual {v1}, Lcom/miui/privacy/LockSettingsHelper;->isPrivacyPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0c0469

    :goto_0
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->mChooseLockSettingsHelper:Lcom/miui/privacy/LockSettingsHelper;

    .line 68
    invoke-virtual {v2}, Lcom/miui/privacy/LockSettingsHelper;->isPrivacyPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0c0468

    :goto_1
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c00ca

    .line 69
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c02f9

    .line 70
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment$1;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment$1;-><init>(Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;)V

    .line 66
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/ConfirmDialog;->showConfirmDialog(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V

    .line 83
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 67
    .restart local v6    # "res":Landroid/content/res/Resources;
    :cond_1
    const v1, 0x7f0c046b

    goto :goto_0

    .line 68
    :cond_2
    const v2, 0x7f0c046a

    goto :goto_1
.end method

.method public static startAuthenticatePrivacyPassword(Landroid/app/Fragment;)V
    .locals 3
    .param p0, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 27
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    new-instance v0, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;

    invoke-direct {v0}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;-><init>()V

    .line 28
    .local v0, "tar":Landroid/app/Fragment;
    const-string v2, "AuthenticatePrivacyPassword"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 29
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 30
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 87
    if-ne p2, v0, :cond_0

    .line 88
    sparse-switch p1, :sswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 90
    :sswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->mChooseLockSettingsHelper:Lcom/miui/privacy/LockSettingsHelper;

    invoke-virtual {v0, v1}, Lcom/miui/privacy/LockSettingsHelper;->setPrivateGalleryEnabled(Z)V

    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->showPasswordUpdateDialog()V

    goto :goto_0

    .line 95
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->setResult(I)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->setResult(I)V

    goto :goto_0

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_1
        0x1c -> :sswitch_1
        0x23 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->mActivity:Landroid/app/Activity;

    .line 42
    iget-object v0, p0, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->mChooseLockSettingsHelper:Lcom/miui/privacy/LockSettingsHelper;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/miui/privacy/LockSettingsHelper;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/privacy/LockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->mChooseLockSettingsHelper:Lcom/miui/privacy/LockSettingsHelper;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->mChooseLockSettingsHelper:Lcom/miui/privacy/LockSettingsHelper;

    invoke-virtual {v0}, Lcom/miui/privacy/LockSettingsHelper;->isPrivateGalleryEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    const/16 v0, 0x23

    invoke-static {p0, v0}, Lcom/miui/privacy/LockSettingsHelper;->confirmPrivateGalleryPassword(Landroid/app/Fragment;I)V

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->authenticatePrivacyPassword()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 171
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 60
    return-void
.end method
