.class public Lcom/miui/gallery/cloud/AddAccount;
.super Ljava/lang/Object;
.source "AddAccount.java"


# direct methods
.method public static onAddAccount(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 25
    invoke-static {}, Lcom/miui/gallery/push/GalleryPushManager;->getInstance()Lcom/miui/gallery/push/GalleryPushManager;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/miui/gallery/push/GalleryPushManager;->onAddAccount(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 28
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v0

    .line 29
    .local v0, "existXiaomiAccount":Z
    const-string v2, "AddAccount"

    const-string v3, "Exist xiaomi Account %s"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    if-eqz v0, :cond_0

    .line 31
    new-instance v2, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 32
    invoke-virtual {v2, v3}, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;->execRequestSync(Z)Z

    move-result v1

    .line 33
    .local v1, "result":Z
    const-string v2, "AddAccount"

    const-string v3, "Done request cloud control data, result %s"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .end local v1    # "result":Z
    :cond_0
    invoke-static {}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->onAddAccount()V

    .line 38
    return-void
.end method
