.class public Lcom/xiaomi/channel/commonutils/android/MIIDUtils;
.super Ljava/lang/Object;
.source "MIIDUtils.java"


# direct methods
.method public static checkGETACCOUNTPermission(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 80
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 81
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "pkgName":Ljava/lang/String;
    const-string v4, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    .line 86
    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 90
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 87
    :catch_0
    move-exception v0

    .line 90
    .local v0, "ignored":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public static getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 27
    const/4 v0, 0x0

    .line 29
    .local v0, "account":Landroid/accounts/Account;
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/MIIDUtils;->checkGETACCOUNTPermission(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 41
    :goto_0
    return-object v4

    .line 32
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 33
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    const-string v5, "com.xiaomi"

    .line 34
    invoke-virtual {v1, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 35
    .local v2, "accounts":[Landroid/accounts/Account;
    if-eqz v2, :cond_1

    array-length v5, v2

    if-lez v5, :cond_1

    .line 36
    const/4 v5, 0x0

    aget-object v0, v2, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v4, v0

    .line 38
    goto :goto_0

    .line 39
    .end local v1    # "accountManager":Landroid/accounts/AccountManager;
    .end local v2    # "accounts":[Landroid/accounts/Account;
    :catch_0
    move-exception v3

    .line 40
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
