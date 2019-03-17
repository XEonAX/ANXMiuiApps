.class public Lcom/miui/gallery/cloud/MiCloudStatusInfoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiCloudStatusInfoReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static handleSpaceFull(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 40
    const-string v6, "account"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 41
    .local v0, "am":Landroid/accounts/AccountManager;
    const-string v6, "extra_micloud_status_info_quota"

    invoke-virtual {v0, p1, v6}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "quota":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 43
    new-instance v1, Lmiui/cloud/sync/MiCloudStatusInfo;

    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v1, v6}, Lmiui/cloud/sync/MiCloudStatusInfo;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "info":Lmiui/cloud/sync/MiCloudStatusInfo;
    invoke-virtual {v1, v5}, Lmiui/cloud/sync/MiCloudStatusInfo;->parseQuotaString(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1}, Lmiui/cloud/sync/MiCloudStatusInfo;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object v4

    .line 46
    .local v4, "qInfo":Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    if-eqz v4, :cond_0

    .line 47
    invoke-virtual {v4}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getTotal()J

    move-result-wide v6

    invoke-virtual {v4}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getUsed()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 49
    .local v2, "free":J
    const-wide/32 v6, 0x1400000

    cmp-long v6, v2, v6

    if-ltz v6, :cond_0

    .line 50
    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->removeOwnerSpaceFull()V

    .line 54
    .end local v1    # "info":Lmiui/cloud/sync/MiCloudStatusInfo;
    .end local v2    # "free":J
    .end local v4    # "qInfo":Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    :cond_0
    return-void
.end method

.method private handleSpaceFullIfNeeded(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->isOwnerSpaceFull()Z

    move-result v1

    if-nez v1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-static {p1}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 32
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 36
    invoke-static {p1, v0}, Lcom/miui/gallery/cloud/MiCloudStatusInfoReceiver;->handleSpaceFull(Landroid/content/Context;Landroid/accounts/Account;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.xiaomi.action.MICLOUD_STATUS_INFO_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/MiCloudStatusInfoReceiver;->handleSpaceFullIfNeeded(Landroid/content/Context;)V

    .line 25
    :cond_0
    return-void
.end method
