.class public Lcom/xiaomi/push/mpcd/job/AccountCollectionJob;
.super Lcom/xiaomi/push/mpcd/job/CollectionJob;
.source "AccountCollectionJob.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "period"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/mpcd/job/CollectionJob;-><init>(Landroid/content/Context;I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected checkPermission()Z
    .locals 3

    .prologue
    .line 49
    iget-object v2, p0, Lcom/xiaomi/push/mpcd/job/AccountCollectionJob;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 50
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/xiaomi/push/mpcd/job/AccountCollectionJob;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "android.permission.GET_ACCOUNTS"

    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 51
    :goto_0
    return v2

    .line 52
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public collectInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v3, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    iget-object v5, p0, Lcom/xiaomi/push/mpcd/job/AccountCollectionJob;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 34
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 35
    .local v2, "accounts":[Landroid/accounts/Account;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 36
    aget-object v0, v2, v4

    .line 37
    .local v0, "account":Landroid/accounts/Account;
    if-lez v4, :cond_0

    .line 38
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_0
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "accountManager":Landroid/accounts/AccountManager;
    .end local v2    # "accounts":[Landroid/accounts/Account;
    .end local v4    # "i":I
    :catch_0
    move-exception v5

    .line 44
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getCollectionType()Lcom/xiaomi/xmpush/thrift/ClientCollectionType;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->Account:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    return-object v0
.end method

.method public getJobId()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x7

    return v0
.end method
