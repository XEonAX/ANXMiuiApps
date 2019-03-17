.class public Lcom/miui/security/CrossUserCompatActivity;
.super Lmiui/app/Activity;
.source "CrossUserCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/security/CrossUserCompatActivity$CrossUserContextWrapper;
    }
.end annotation


# instance fields
.field private volatile mCrossUserContentResolver:Landroid/content/ContentResolver;

.field private volatile mCrossUserContextWrapper:Landroid/content/ContextWrapper;

.field private final mLockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/security/CrossUserCompatActivity;->mLockObject:Ljava/lang/Object;

    .line 127
    return-void
.end method

.method private validateCallingPackage()Z
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/internal/CrossUserHelper;->checkUidPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateCrossUser()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 103
    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    move v0, v1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.picked_user_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 108
    .local v0, "userId":I
    invoke-direct {p0}, Lcom/miui/security/CrossUserCompatActivity;->validateCallingPackage()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 111
    goto :goto_0
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 4

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/miui/security/CrossUserCompatActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    if-nez v0, :cond_1

    .line 45
    iget-object v1, p0, Lcom/miui/security/CrossUserCompatActivity;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/miui/security/CrossUserCompatActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/miui/security/CrossUserCompatActivity$CrossUserContextWrapper;

    .line 49
    invoke-super {p0}, Lmiui/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/miui/security/CrossUserCompatActivity;->validateCrossUser()I

    move-result v3

    invoke-direct {v0, p0, v2, v3}, Lcom/miui/security/CrossUserCompatActivity$CrossUserContextWrapper;-><init>(Lcom/miui/security/CrossUserCompatActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/security/CrossUserCompatActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    const-string v0, "CrossUserPickerActivity"

    const-string v1, "getApplicationContext: WrapperedApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/miui/security/CrossUserCompatActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    .line 57
    :goto_0
    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 56
    :cond_2
    const-string v0, "CrossUserPickerActivity"

    const-string v1, "getApplicationContext: NormalApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-super {p0}, Lmiui/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    iget-object v0, p0, Lcom/miui/security/CrossUserCompatActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_1

    .line 27
    iget-object v1, p0, Lcom/miui/security/CrossUserCompatActivity;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/miui/security/CrossUserCompatActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 30
    invoke-direct {p0}, Lcom/miui/security/CrossUserCompatActivity;->validateCrossUser()I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/internal/CrossUserHelper;->getContentResolver(Landroid/content/Context;I)Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/security/CrossUserCompatActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    const-string v0, "CrossUserPickerActivity"

    const-string v1, "getContentResolver: CrossUserContentResolver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/miui/security/CrossUserCompatActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    .line 38
    :goto_0
    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 37
    :cond_2
    const-string v0, "CrossUserPickerActivity"

    const-string v1, "getContentResolver: NormalContentResolver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-super {p0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_0
.end method

.method public isCrossUserPick()Z
    .locals 2

    .prologue
    .line 124
    sget-boolean v0, Lcom/miui/core/SdkHelper;->IS_MIUI:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/internal/CrossUserHelper;->support()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/security/CrossUserCompatActivity;->validateCrossUser()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "android.intent.extra.picked_user_id"

    invoke-direct {p0}, Lcom/miui/security/CrossUserCompatActivity;->validateCrossUser()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    :cond_0
    invoke-super {p0, p1}, Lmiui/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "android.intent.extra.picked_user_id"

    invoke-direct {p0}, Lcom/miui/security/CrossUserCompatActivity;->validateCrossUser()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 74
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "android.intent.extra.picked_user_id"

    invoke-direct {p0}, Lcom/miui/security/CrossUserCompatActivity;->validateCrossUser()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 82
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "android.intent.extra.picked_user_id"

    invoke-direct {p0}, Lcom/miui/security/CrossUserCompatActivity;->validateCrossUser()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lmiui/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/miui/security/CrossUserCompatActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "android.intent.extra.picked_user_id"

    invoke-direct {p0}, Lcom/miui/security/CrossUserCompatActivity;->validateCrossUser()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lmiui/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 99
    return-void
.end method
