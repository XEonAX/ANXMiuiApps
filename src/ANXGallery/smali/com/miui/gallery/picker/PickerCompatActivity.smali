.class public Lcom/miui/gallery/picker/PickerCompatActivity;
.super Lcom/miui/security/CrossUserCompatActivity;
.source "PickerCompatActivity.java"


# static fields
.field private static final REQUIRED_RUNTIME_PERMISSIONS:[Ljava/lang/String;


# instance fields
.field protected mActionBar:Lmiui/app/ActionBar;

.field private mIsResumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/picker/PickerCompatActivity;->REQUIRED_RUNTIME_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/miui/security/CrossUserCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected allowUseOnOffline()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method protected checkPermission([Ljava/lang/String;)V
    .locals 2
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 99
    invoke-static {p0, p1}, Lcom/miui/gallery/permission/core/PermissionUtils;->getUngrantedPermissions(Landroid/app/Activity;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "ungrantedPermissions":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 101
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/gallery/permission/core/PermissionUtils;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatActivity;->onCheckPermissionSucceed()V

    goto :goto_0
.end method

.method protected getFragmentContainerId()I
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method protected getRuntimePermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/miui/gallery/picker/PickerCompatActivity;->REQUIRED_RUNTIME_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected hasCustomContentView()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method protected initActionBar()V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/picker/PickerCompatActivity;->mActionBar:Lmiui/app/ActionBar;

    .line 85
    return-void
.end method

.method protected onCheckPermissionSucceed()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/miui/security/CrossUserCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatActivity;->hasCustomContentView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    const v1, 0x7f040037

    invoke-virtual {p0, v1}, Lcom/miui/gallery/picker/PickerCompatActivity;->setContentView(I)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatActivity;->initActionBar()V

    .line 41
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatActivity;->getRuntimePermissions()[Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "runtimePermissions":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 43
    invoke-virtual {p0, v0}, Lcom/miui/gallery/picker/PickerCompatActivity;->checkPermission([Ljava/lang/String;)V

    .line 45
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/miui/security/CrossUserCompatActivity;->onPause()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/picker/PickerCompatActivity;->mIsResumed:Z

    .line 76
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 117
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    if-eqz p2, :cond_2

    .line 118
    const/4 v1, 0x1

    .line 119
    .local v1, "succeed":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v2, "unGrantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 121
    aget v3, p3, v0

    if-eqz v3, :cond_0

    .line 122
    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    const/4 v1, 0x0

    .line 120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    if-eqz v1, :cond_3

    .line 127
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatActivity;->onCheckPermissionSucceed()V

    .line 133
    .end local v0    # "i":I
    .end local v1    # "succeed":Z
    .end local v2    # "unGrantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return-void

    .line 129
    .restart local v0    # "i":I
    .restart local v1    # "succeed":Z
    .restart local v2    # "unGrantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->startActivity(Landroid/app/Activity;Ljava/util/List;Z)V

    .line 130
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatActivity;->finish()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/miui/security/CrossUserCompatActivity;->onResume()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/picker/PickerCompatActivity;->mIsResumed:Z

    .line 70
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/miui/security/CrossUserCompatActivity;->onStart()V

    .line 58
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->allowUseOnOfflineGlobal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatActivity;->allowUseOnOffline()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/gallery/agreement/AgreementsUtils;->showUserAgreements(Landroid/app/Activity;Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lcom/miui/security/CrossUserCompatActivity;->onStop()V

    .line 81
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerCompatActivity;->mActionBar:Lmiui/app/ActionBar;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerCompatActivity;->mActionBar:Lmiui/app/ActionBar;

    invoke-virtual {v0, p1}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    :cond_0
    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "tar"    # Landroid/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "addToBackStack"    # Z
    .param p4, "add"    # Z

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatActivity;->getFragmentContainerId()I

    move-result v1

    if-gtz v1, :cond_0

    .line 143
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalidate container id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 146
    const-string v1, "PickerCompatActivity"

    const-string v2, "already has tag of fragment %s"

    invoke-static {v1, v2, p2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 150
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    if-eqz p3, :cond_2

    .line 151
    invoke-virtual {v0, p2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 153
    :cond_2
    if-eqz p4, :cond_3

    .line 154
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatActivity;->getFragmentContainerId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 158
    :goto_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 156
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickerCompatActivity;->getFragmentContainerId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method
