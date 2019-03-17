.class public Lcom/miui/gallery/permission/core/PermissionDeniedActivity;
.super Landroid/app/Activity;
.source "PermissionDeniedActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/permission/core/PermissionDeniedActivity$ScreenBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mInfoDialog:Landroid/app/AlertDialog;

.field private mScreenReceiver:Lcom/miui/gallery/permission/core/PermissionDeniedActivity$ScreenBroadcastReceiver;

.field private mUnGrantedPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 154
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/permission/core/PermissionDeniedActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/permission/core/PermissionDeniedActivity;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->isShowWhenLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->enterGalleryAppSetting(Landroid/content/Context;)V

    return-void
.end method

.method private static enterGalleryAppSetting(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 171
    return-void
.end method

.method private isShowWhenLocked()Z
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "StartActivityWhenLocked"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private showDialog()Landroid/app/AlertDialog;
    .locals 12

    .prologue
    const v10, 0x7f0c023f

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 113
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->mUnGrantedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 114
    .local v6, "permissionNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->mUnGrantedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 115
    iget-object v7, p0, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->mUnGrantedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 117
    .local v5, "permissionName":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->mUnGrantedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/16 v8, 0x80

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 118
    .local v4, "permissionInfo":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v4, v3}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 119
    .local v2, "label":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 120
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 125
    :cond_0
    invoke-virtual {p0, v10}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v5, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 114
    .end local v2    # "label":Ljava/lang/CharSequence;
    .end local v4    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string v7, "PermissionDeniedActivity"

    const-string v8, "Get permission info failed, %s"

    invoke-static {v7, v8, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    invoke-virtual {p0, v10}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v5, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    goto :goto_1

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v7

    invoke-virtual {p0, v10}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    throw v7

    .line 129
    .end local v5    # "permissionName":Ljava/lang/String;
    :cond_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {v7, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0c0240

    .line 131
    invoke-virtual {p0, v8}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "\n"

    invoke-static {v10, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0c0241

    .line 132
    invoke-virtual {p0, v8}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 133
    invoke-direct {p0}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->isShowWhenLocked()Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x7f0c0242

    :goto_2
    new-instance v9, Lcom/miui/gallery/permission/core/PermissionDeniedActivity$2;

    invoke-direct {v9, p0}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity$2;-><init>(Lcom/miui/gallery/permission/core/PermissionDeniedActivity;)V

    invoke-virtual {v8, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x1040000

    new-instance v9, Lcom/miui/gallery/permission/core/PermissionDeniedActivity$1;

    invoke-direct {v9, p0}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity$1;-><init>(Lcom/miui/gallery/permission/core/PermissionDeniedActivity;)V

    .line 144
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 151
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7

    .line 133
    :cond_2
    const v7, 0x7f0c023e

    goto :goto_2
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/util/List;Z)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "startFromLock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "unGrantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 33
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "permissions"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 39
    const-string v1, "StartActivityWhenLocked"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 41
    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->mInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->mInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 85
    iput-object v2, p0, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->mInfoDialog:Landroid/app/AlertDialog;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->mScreenReceiver:Lcom/miui/gallery/permission/core/PermissionDeniedActivity$ScreenBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->mScreenReceiver:Lcom/miui/gallery/permission/core/PermissionDeniedActivity$ScreenBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    iput-object v2, p0, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->mScreenReceiver:Lcom/miui/gallery/permission/core/PermissionDeniedActivity$ScreenBroadcastReceiver;

    .line 91
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 92
    invoke-virtual {p0, v1, v1}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->overridePendingTransition(II)V

    .line 93
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f0400ee

    invoke-virtual {p0, v0}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->setContentView(I)V

    .line 52
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 104
    const-string v0, "permission_denied"

    invoke-static {p0, v0}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
    const-string v0, "permission_denied"

    invoke-static {p0, v0}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 58
    invoke-direct {p0}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->isShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "permissions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->mUnGrantedPermissions:Ljava/util/ArrayList;

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->mUnGrantedPermissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->mUnGrantedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->finish()V

    .line 73
    :cond_2
    :goto_0
    return-void

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->mInfoDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_4

    .line 66
    invoke-direct {p0}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->showDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->mInfoDialog:Landroid/app/AlertDialog;

    .line 68
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->mScreenReceiver:Lcom/miui/gallery/permission/core/PermissionDeniedActivity$ScreenBroadcastReceiver;

    if-nez v0, :cond_2

    .line 69
    new-instance v0, Lcom/miui/gallery/permission/core/PermissionDeniedActivity$ScreenBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity$ScreenBroadcastReceiver;-><init>(Lcom/miui/gallery/permission/core/PermissionDeniedActivity;Lcom/miui/gallery/permission/core/PermissionDeniedActivity$1;)V

    iput-object v0, p0, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->mScreenReceiver:Lcom/miui/gallery/permission/core/PermissionDeniedActivity$ScreenBroadcastReceiver;

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->mScreenReceiver:Lcom/miui/gallery/permission/core/PermissionDeniedActivity$ScreenBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 78
    invoke-virtual {p0}, Lcom/miui/gallery/permission/core/PermissionDeniedActivity;->finish()V

    .line 79
    return-void
.end method
