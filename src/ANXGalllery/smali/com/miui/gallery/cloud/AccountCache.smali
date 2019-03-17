.class public Lcom/miui/gallery/cloud/AccountCache;
.super Ljava/lang/Object;
.source "AccountCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    }
.end annotation


# static fields
.field private static sAccountInfo:Lcom/miui/gallery/cloud/AccountCache$AccountInfo;


# direct methods
.method public static declared-synchronized getAccount()Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 43
    const-class v2, Lcom/miui/gallery/cloud/AccountCache;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/miui/gallery/cloud/AccountCache;->sAccountInfo:Lcom/miui/gallery/cloud/AccountCache$AccountInfo;

    if-eqz v1, :cond_0

    .line 44
    sget-object v1, Lcom/miui/gallery/cloud/AccountCache;->sAccountInfo:Lcom/miui/gallery/cloud/AccountCache$AccountInfo;

    iget-object v1, v1, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mAccount:Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .local v0, "context":Landroid/content/Context;
    :goto_0
    monitor-exit v2

    return-object v1

    .line 47
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 48
    .restart local v0    # "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getAccountInfo()Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    .locals 3

    .prologue
    .line 60
    sget-object v1, Lcom/miui/gallery/cloud/AccountCache;->sAccountInfo:Lcom/miui/gallery/cloud/AccountCache$AccountInfo;

    if-nez v1, :cond_0

    .line 61
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->requestAccountInfo()Lcom/miui/gallery/cloud/AccountCache$AccountInfo;

    move-result-object v0

    .line 62
    .local v0, "info":Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    if-eqz v0, :cond_0

    .line 63
    iget-object v1, v0, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mAccount:Landroid/accounts/Account;

    iget-object v2, v0, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    invoke-static {v1, v2}, Lcom/miui/gallery/cloud/AccountCache;->update(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 67
    :cond_0
    sget-object v1, Lcom/miui/gallery/cloud/AccountCache;->sAccountInfo:Lcom/miui/gallery/cloud/AccountCache$AccountInfo;

    return-object v1
.end method

.method private static requestAccountInfo()Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v4

    if-nez v4, :cond_0

    .line 72
    const-string v4, "AccountCache"

    const-string v5, "requestAccount: cta not allowed"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .local v0, "account":Landroid/accounts/Account;
    .local v1, "context":Landroid/content/Context;
    :goto_0
    return-object v3

    .line 76
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 77
    .restart local v1    # "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 79
    .restart local v0    # "account":Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 80
    const-string v4, "AccountCache"

    const-string v5, "requestAccount: get account failed"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-static {v1, v0}, Lcom/miui/gallery/cloud/CloudUtils;->getExtToken(Landroid/content/Context;Landroid/accounts/Account;)Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-result-object v2

    .line 85
    .local v2, "token":Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    if-nez v2, :cond_2

    .line 86
    const-string v4, "AccountCache"

    const-string v5, "requestAccount: get ext token failed"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_2
    new-instance v3, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;

    invoke-direct {v3, v0, v2}, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;-><init>(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    goto :goto_0
.end method

.method public static declared-synchronized update(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "token"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .prologue
    .line 35
    const-class v1, Lcom/miui/gallery/cloud/AccountCache;

    monitor-enter v1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 36
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/miui/gallery/cloud/AccountCache;->sAccountInfo:Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :goto_0
    monitor-exit v1

    return-void

    .line 38
    :cond_1
    :try_start_1
    new-instance v0, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;-><init>(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    sput-object v0, Lcom/miui/gallery/cloud/AccountCache;->sAccountInfo:Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
