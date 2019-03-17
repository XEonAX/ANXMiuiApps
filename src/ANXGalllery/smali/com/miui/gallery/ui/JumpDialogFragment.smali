.class public Lcom/miui/gallery/ui/JumpDialogFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "JumpDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/JumpDialogFragment$PeopleJumpHelper;,
        Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;,
        Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;
    }
.end annotation


# instance fields
.field private mDelayVisibleRunnable:Ljava/lang/Runnable;

.field private mHandleIntentCallback:Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 156
    new-instance v0, Lcom/miui/gallery/ui/JumpDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/JumpDialogFragment$1;-><init>(Lcom/miui/gallery/ui/JumpDialogFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/JumpDialogFragment;->mHandleIntentCallback:Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;

    .line 192
    new-instance v0, Lcom/miui/gallery/ui/JumpDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/JumpDialogFragment$2;-><init>(Lcom/miui/gallery/ui/JumpDialogFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/JumpDialogFragment;->mDelayVisibleRunnable:Ljava/lang/Runnable;

    .line 406
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/JumpDialogFragment;Landroid/app/Dialog;F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/JumpDialogFragment;
    .param p1, "x1"    # Landroid/app/Dialog;
    .param p2, "x2"    # F

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/JumpDialogFragment;->setDialogAlpha(Landroid/app/Dialog;F)V

    return-void
.end method

.method public static enterPrivateAlbum(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 73
    new-instance v1, Lcom/miui/gallery/ui/JumpDialogFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/JumpDialogFragment;-><init>()V

    .line 74
    .local v1, "dialog":Lcom/miui/gallery/ui/JumpDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "pageType"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/JumpDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "JumpDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/JumpDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private setDialogAlpha(Landroid/app/Dialog;F)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "alpha"    # F

    .prologue
    .line 204
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 208
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 209
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public static showAlbumPage(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 55
    new-instance v1, Lcom/miui/gallery/ui/JumpDialogFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/JumpDialogFragment;-><init>()V

    .line 56
    .local v1, "dialog":Lcom/miui/gallery/ui/JumpDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 58
    const-string v2, "pageType"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/JumpDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "JumpDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/JumpDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static showPeoplePage(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "peopleServerId"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v1, Lcom/miui/gallery/ui/JumpDialogFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/JumpDialogFragment;-><init>()V

    .line 65
    .local v1, "dialog":Lcom/miui/gallery/ui/JumpDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "serverId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v2, "pageType"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/JumpDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "JumpDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/JumpDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/miui/gallery/ui/JumpDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "pageType"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 109
    .local v2, "pageType":I
    packed-switch v2, :pswitch_data_0

    .line 130
    const-string v3, "JumpDialogFragment"

    const-string v4, "Invalid page type %d"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p0}, Lcom/miui/gallery/ui/JumpDialogFragment;->dismiss()V

    .line 133
    :goto_0
    return-void

    .line 111
    :pswitch_0
    const-string v3, "JumpDialogFragment"

    const-string v4, "Jump to album page, album serverId = %s"

    invoke-virtual {p0}, Lcom/miui/gallery/ui/JumpDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "serverId"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    new-instance v1, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;

    invoke-direct {v1, p0, p0}, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;-><init>(Lcom/miui/gallery/ui/JumpDialogFragment;Landroid/app/Fragment;)V

    .line 113
    .local v1, "helper":Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;
    iget-object v4, p0, Lcom/miui/gallery/ui/JumpDialogFragment;->mHandleIntentCallback:Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/JumpDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v5, "uri"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v1, v4, v3}, Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;->startLoading(Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;Landroid/net/Uri;)V

    goto :goto_0

    .line 117
    .end local v1    # "helper":Lcom/miui/gallery/ui/JumpDialogFragment$AlbumJumpHelper;
    :pswitch_1
    const-string v3, "JumpDialogFragment"

    const-string v4, "Jump to people page, people serverId = %s"

    invoke-virtual {p0}, Lcom/miui/gallery/ui/JumpDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "serverId"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    new-instance v1, Lcom/miui/gallery/ui/JumpDialogFragment$PeopleJumpHelper;

    invoke-direct {v1, p0, p0}, Lcom/miui/gallery/ui/JumpDialogFragment$PeopleJumpHelper;-><init>(Lcom/miui/gallery/ui/JumpDialogFragment;Landroid/app/Fragment;)V

    .line 119
    .local v1, "helper":Lcom/miui/gallery/ui/JumpDialogFragment$PeopleJumpHelper;
    iget-object v3, p0, Lcom/miui/gallery/ui/JumpDialogFragment;->mHandleIntentCallback:Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/JumpDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "serverId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/miui/gallery/ui/JumpDialogFragment$PeopleJumpHelper;->startLoading(Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    .end local v1    # "helper":Lcom/miui/gallery/ui/JumpDialogFragment$PeopleJumpHelper;
    :pswitch_2
    const-string v3, "JumpDialogFragment"

    const-string v4, "Jump secret album"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "cloud_guide_source"

    sget-object v4, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;->SECRET:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 126
    invoke-static {p0, v0}, Lcom/miui/gallery/ui/LoginAndSyncCheckFragment;->checkLoginAndSyncState(Landroid/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 137
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 138
    sparse-switch p1, :sswitch_data_0

    .line 153
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 154
    return-void

    .line 140
    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/JumpDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/IntentUtil;->enterPrivateAlbum(Landroid/content/Context;)V

    .line 141
    iget-object v1, p0, Lcom/miui/gallery/ui/JumpDialogFragment;->mHandleIntentCallback:Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;

    invoke-interface {v1, v2}, Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;->onHandleIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 144
    :sswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/JumpDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 145
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 146
    invoke-static {p0}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->startAuthenticatePrivacyPassword(Landroid/app/Fragment;)V

    goto :goto_0

    .line 151
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/JumpDialogFragment;->mHandleIntentCallback:Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;

    invoke-interface {v1, v2}, Lcom/miui/gallery/ui/JumpDialogFragment$HandleIntentCallback;->onHandleIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 138
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_1
        0x24 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/miui/gallery/ui/JumpDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0}, Lcom/miui/gallery/ui/JumpDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0282

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 82
    invoke-static {v1, v2, v3, v4, v5}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiui/app/ProgressDialog;

    move-result-object v0

    .line 86
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/JumpDialogFragment;->setDialogAlpha(Landroid/app/Dialog;F)V

    .line 87
    invoke-virtual {p0, v5}, Lcom/miui/gallery/ui/JumpDialogFragment;->setCancelable(Z)V

    .line 88
    return-object v0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 93
    invoke-super {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onStart()V

    .line 95
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/JumpDialogFragment;->mDelayVisibleRunnable:Ljava/lang/Runnable;

    .line 96
    invoke-virtual {p0}, Lcom/miui/gallery/ui/JumpDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    .line 95
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onStop()V

    .line 102
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/JumpDialogFragment;->mDelayVisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method
