.class public Lcom/miui/gallery/activity/BaseActivity;
.super Lmiui/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/miui/gallery/permission/core/PermissionCheckCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/activity/BaseActivity$ScreenBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final REQUIRED_RUNTIME_PERMISSIONS:[Ljava/lang/String;


# instance fields
.field protected mActionBar:Lmiui/app/ActionBar;

.field private mIsResumed:Z

.field private mIsStartingEnterTransition:Z

.field private mPermissionCheckHelper:Lcom/miui/gallery/permission/core/PermissionCheckHelper;

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/activity/BaseActivity;->REQUIRED_RUNTIME_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mIsStartingEnterTransition:Z

    .line 207
    return-void
.end method

.method static synthetic access$102(Lcom/miui/gallery/activity/BaseActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/activity/BaseActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/miui/gallery/activity/BaseActivity;->mIsStartingEnterTransition:Z

    return p1
.end method


# virtual methods
.method protected allowUseOnOffline()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method protected getFragmentContainerId()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getRuntimePermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/miui/gallery/activity/BaseActivity;->REQUIRED_RUNTIME_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected hasCustomContentView()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method protected initActionBar()V
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mActionBar:Lmiui/app/ActionBar;

    .line 113
    return-void
.end method

.method public isPermissionRequired(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method protected isShowWhenLocked()Z
    .locals 3

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "StartActivityWhenLocked"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3}, Lmiui/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 78
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/util/DocumentProviderUtils;->handleRequestPermissionResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 79
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->hasCustomContentView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const v0, 0x7f040037

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/BaseActivity;->setContentView(I)V

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->initActionBar()V

    .line 52
    new-instance v0, Lcom/miui/gallery/permission/core/PermissionCheckHelper;

    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->isShowWhenLocked()Z

    move-result v1

    invoke-direct {v0, p0, v1, p0}, Lcom/miui/gallery/permission/core/PermissionCheckHelper;-><init>(Landroid/app/Activity;ZLcom/miui/gallery/permission/core/PermissionCheckCallback;)V

    iput-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mPermissionCheckHelper:Lcom/miui/gallery/permission/core/PermissionCheckHelper;

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mPermissionCheckHelper:Lcom/miui/gallery/permission/core/PermissionCheckHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->checkPermission()V

    .line 55
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->supportShowOnScreenLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->isShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 57
    new-instance v0, Lcom/miui/gallery/activity/BaseActivity$ScreenBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/activity/BaseActivity$ScreenBroadcastReceiver;-><init>(Lcom/miui/gallery/activity/BaseActivity;Lcom/miui/gallery/activity/BaseActivity$1;)V

    iput-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.intent.action.SCREEN_OFF"

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/miui/gallery/util/ReceiverUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    .line 60
    :cond_1
    return-void
.end method

.method protected onCtaChecked(Z)V
    .locals 0
    .param p1, "agreed"    # Z

    .prologue
    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/miui/gallery/util/ReceiverUtils;->safeUnregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 109
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 226
    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_1

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->supportEnterSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-static {p0}, Lcom/miui/gallery/util/IntentUtil;->enterGallerySetting(Landroid/content/Context;)V

    .line 229
    const/4 v0, 0x1

    .line 232
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lmiui/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mIsResumed:Z

    .line 100
    return-void
.end method

.method public onPermissionsChecked([Ljava/lang/String;[I)V
    .locals 1
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    .line 149
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->allowUseOnOfflineGlobal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->allowUseOnOffline()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    :cond_0
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/BaseActivity;->onCtaChecked(Z)V

    .line 163
    :goto_0
    return-void

    .line 153
    :cond_2
    new-instance v0, Lcom/miui/gallery/activity/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/activity/BaseActivity$1;-><init>(Lcom/miui/gallery/activity/BaseActivity;)V

    invoke-static {p0, v0}, Lcom/miui/gallery/agreement/AgreementsUtils;->showUserAgreements(Landroid/app/Activity;Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;)V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mPermissionCheckHelper:Lcom/miui/gallery/permission/core/PermissionCheckHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/permission/core/PermissionCheckHelper;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 169
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mIsResumed:Z

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mIsStartingEnterTransition:Z

    .line 94
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mIsStartingEnterTransition:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p0}, Lcom/miui/gallery/util/TransitionPatching;->onActivityStopWhenEnterStarting(Landroid/app/Activity;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mIsStartingEnterTransition:Z

    .line 72
    :cond_0
    invoke-super {p0}, Lmiui/app/Activity;->onStop()V

    .line 73
    return-void
.end method

.method protected final resumed()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mIsResumed:Z

    return v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mActionBar:Lmiui/app/ActionBar;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mActionBar:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    :cond_0
    return-void
.end method

.method public showPermissionIntroduction(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/permission/core/OnPermissionIntroduced;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/miui/gallery/permission/core/OnPermissionIntroduced;

    .prologue
    .line 138
    invoke-static {p1, p2, p3}, Lcom/miui/gallery/permission/PermissionIntroductionUtils;->showPermissionIntroduction(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/permission/core/OnPermissionIntroduced;)V

    .line 139
    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "tar"    # Landroid/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "addToBackStack"    # Z
    .param p4, "add"    # Z

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->getFragmentContainerId()I

    move-result v1

    if-gtz v1, :cond_0

    .line 179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalidate container id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 183
    const-string v1, "BaseActivity"

    const-string v2, "already has tag of fragment %s"

    invoke-static {v1, v2, p2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 188
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    if-eqz p3, :cond_2

    .line 189
    invoke-virtual {v0, p2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 191
    :cond_2
    if-eqz p4, :cond_3

    .line 192
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->getFragmentContainerId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 196
    :goto_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 194
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/activity/BaseActivity;->getFragmentContainerId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method public startPostponedEnterTransition()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lmiui/app/Activity;->startPostponedEnterTransition()V

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/activity/BaseActivity;->mIsStartingEnterTransition:Z

    .line 243
    new-instance v0, Lcom/miui/gallery/activity/BaseActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/activity/BaseActivity$2;-><init>(Lcom/miui/gallery/activity/BaseActivity;)V

    invoke-static {p0, v0}, Lcom/miui/gallery/util/TransitionPatching;->setOnEnterStartedListener(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method

.method protected supportEnterSetting()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method protected supportShowOnScreenLocked()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method
