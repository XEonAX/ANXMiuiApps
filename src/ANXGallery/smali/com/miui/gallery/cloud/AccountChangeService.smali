.class public Lcom/miui/gallery/cloud/AccountChangeService;
.super Lcom/miui/gallery/service/IntentServiceBase;
.source "AccountChangeService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/miui/gallery/service/IntentServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNotification()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/AccountChangeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/NotificationHelper;->getEmptyNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method protected getNotificationId()I
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0xa

    return v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 27
    invoke-super {p0, p1}, Lcom/miui/gallery/service/IntentServiceBase;->onHandleIntent(Landroid/content/Intent;)V

    .line 28
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "action":Ljava/lang/String;
    const-string v5, "delete_account"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 30
    const-string v5, "extra_account"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 31
    .local v2, "preAccount":Landroid/accounts/Account;
    const-string v5, "extra_wipe_data"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 33
    .local v3, "wipeData":Z
    if-eqz v3, :cond_0

    const/4 v4, 0x2

    .line 35
    .local v4, "wipeDataStrategy":I
    :cond_0
    invoke-static {v6, v2, v4, v6}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccountInTask(Landroid/app/Activity;Landroid/accounts/Account;ILcom/miui/gallery/cloud/DeleteAccount$DeleteAccountListener;)V

    .line 40
    .end local v2    # "preAccount":Landroid/accounts/Account;
    .end local v3    # "wipeData":Z
    .end local v4    # "wipeDataStrategy":I
    :cond_1
    :goto_0
    return-void

    .line 36
    :cond_2
    const-string v5, "add_account"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 37
    const-string v5, "extra_account"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 38
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {p0, v0}, Lcom/miui/gallery/cloud/AddAccount;->onAddAccount(Landroid/content/Context;Landroid/accounts/Account;)V

    goto :goto_0
.end method
