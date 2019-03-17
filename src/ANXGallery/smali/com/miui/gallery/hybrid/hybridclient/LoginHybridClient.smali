.class public Lcom/miui/gallery/hybrid/hybridclient/LoginHybridClient;
.super Lcom/miui/gallery/hybrid/hybridclient/DeviceIdHybridClient;
.source "LoginHybridClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/hybrid/hybridclient/DeviceIdHybridClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getActualPath(Lcom/miui/gallery/hybrid/hybridclient/HybridClient$ActualPathCallback;)V
    .locals 7
    .param p1, "callback"    # Lcom/miui/gallery/hybrid/hybridclient/HybridClient$ActualPathCallback;

    .prologue
    const/4 v3, 0x0

    .line 19
    if-nez p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/hybrid/hybridclient/LoginHybridClient;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 23
    invoke-interface {p1, v3}, Lcom/miui/gallery/hybrid/hybridclient/HybridClient$ActualPathCallback;->onGetActualPath(Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "weblogin:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/gallery/hybrid/hybridclient/LoginHybridClient;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "loginUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/gallery/hybrid/hybridclient/LoginHybridClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 29
    .local v1, "account":Landroid/accounts/Account;
    if-eqz v1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/miui/gallery/hybrid/hybridclient/LoginHybridClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/gallery/hybrid/hybridclient/LoginHybridClient$1;

    invoke-direct {v5, p0, p1}, Lcom/miui/gallery/hybrid/hybridclient/LoginHybridClient$1;-><init>(Lcom/miui/gallery/hybrid/hybridclient/LoginHybridClient;Lcom/miui/gallery/hybrid/hybridclient/HybridClient$ActualPathCallback;)V

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method
