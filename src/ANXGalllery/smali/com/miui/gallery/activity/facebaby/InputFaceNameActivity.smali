.class public Lcom/miui/gallery/activity/facebaby/InputFaceNameActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "InputFaceNameActivity.java"


# instance fields
.field mFragment:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private getOptionalPermissions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public getRuntimePermissions()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->getRuntimePermissions()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/gallery/activity/facebaby/InputFaceNameActivity;->getOptionalPermissions()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/StringUtils;->mergeStringArray([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPermissionRequired(Ljava/lang/String;)Z
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Lcom/miui/gallery/activity/facebaby/InputFaceNameActivity;->getOptionalPermissions()[Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "optionalPermissions":[Ljava/lang/String;
    array-length v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 40
    .local v0, "optional":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 44
    .end local v0    # "optional":Ljava/lang/String;
    :goto_1
    return v2

    .line 39
    .restart local v0    # "optional":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "optional":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/InputFaceNameActivity;->mFragment:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->onBackPressed()V

    .line 24
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onBackPressed()V

    .line 25
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f04009c

    invoke-virtual {p0, v0}, Lcom/miui/gallery/activity/facebaby/InputFaceNameActivity;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/InputFaceNameActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f12019c

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/InputFaceNameActivity;->mFragment:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .line 19
    return-void
.end method

.method public onPermissionsChecked([Ljava/lang/String;[I)V
    .locals 1
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/activity/BaseActivity;->onPermissionsChecked([Ljava/lang/String;[I)V

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/InputFaceNameActivity;->mFragment:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/InputFaceNameActivity;->mFragment:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->updateNameList()V

    .line 53
    :cond_0
    return-void
.end method
