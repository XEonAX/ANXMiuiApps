.class public Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;
.super Landroid/app/Fragment;
.source "LoginAndSyncCheckFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private mCheckGallerySync:Z

.field private mCheckingType:I

.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->mCheckingType:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->setResult(I)V

    return-void
.end method

.method private checkGallerySync()V
    .locals 6

    .prologue
    .line 135
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->mCheckingType:I

    .line 136
    const v1, 0x7f0c04fb

    const v2, 0x7f0c04f8

    const v3, 0x7f0c04fa

    new-instance v4, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment$3;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment$3;-><init>(Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;)V

    new-instance v5, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment$4;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment$4;-><init>(Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->showDialog(IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 151
    return-void
.end method

.method private checkLogin()V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/IntentUtil;->guideToLoginXiaomiAccount(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->mCheckingType:I

    .line 109
    return-void
.end method

.method public static checkLoginAndSyncState(Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 40
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    new-instance v0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;

    invoke-direct {v0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;-><init>()V

    .line 41
    .local v0, "tar":Landroid/app/Fragment;
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    const-string v2, "LoginAndSyncCheckFragment"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 43
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 44
    return-void
.end method

.method private checkSystemSync()V
    .locals 6

    .prologue
    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->mCheckingType:I

    .line 114
    const v1, 0x7f0c04fb

    const v2, 0x7f0c04f9

    const v3, 0x7f0c04fa

    new-instance v4, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment$1;-><init>(Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;)V

    new-instance v5, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment$2;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment$2;-><init>(Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->showDialog(IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 131
    return-void
.end method

.method private doCheck()V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->checkLogin()V

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->checkSystemSync()V

    goto :goto_0

    .line 98
    :cond_1
    iget-boolean v0, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->mCheckGallerySync:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    invoke-direct {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->checkGallerySync()V

    goto :goto_0

    .line 101
    :cond_2
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->setResult(I)V

    goto :goto_0
.end method

.method private setResult(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 166
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 167
    const/16 v2, 0x1d

    .line 168
    invoke-virtual {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 167
    :goto_0
    invoke-virtual {v0, v2, p1, v1}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 171
    return-void

    .line 168
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showDialog(IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "titleId"    # I
    .param p2, "msgId"    # I
    .param p3, "positiveButtonTextId"    # I
    .param p4, "positiveButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "negativeButtonListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 178
    iget-object v0, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 180
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 184
    invoke-virtual {v0, v1, p5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->mDialog:Landroid/app/Dialog;

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 187
    iget-object v0, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 188
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 192
    iget v0, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->mCheckingType:I

    packed-switch v0, :pswitch_data_0

    .line 201
    :goto_0
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->setResult(I)V

    .line 204
    :goto_1
    return-void

    .line 194
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c04cb

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 195
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->setResult(I)V

    goto :goto_1

    .line 198
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0238

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 199
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->setResult(I)V

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    .local v0, "args":Landroid/os/Bundle;
    iput v2, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->mCheckingType:I

    .line 50
    if-eqz v0, :cond_0

    const-string v3, "key_check_gallery_sync"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :cond_0
    iput-boolean v2, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->mCheckGallerySync:Z

    .line 51
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    .local v1, "view":Landroid/view/View;
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 157
    iget-object v0, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 161
    :cond_0
    const-string v0, "LoginAndSyncCheckFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 58
    iget v0, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->mCheckingType:I

    packed-switch v0, :pswitch_data_0

    .line 87
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->setResult(I)V

    .line 90
    :goto_0
    const-string v0, "LoginAndSyncCheckFragment"

    const-string v1, "onStart isCheckPending %d"

    iget v2, p0, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->mCheckingType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    return-void

    .line 60
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->doCheck()V

    goto :goto_0

    .line 63
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0583

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 65
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->setResult(I)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->doCheck()V

    goto :goto_0

    .line 71
    :pswitch_2
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c04cb

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 73
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->setResult(I)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->doCheck()V

    goto :goto_0

    .line 79
    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0238

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 81
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->setResult(I)V

    goto :goto_0

    .line 83
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->doCheck()V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
