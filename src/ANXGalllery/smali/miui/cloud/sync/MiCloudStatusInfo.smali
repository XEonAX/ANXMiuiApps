.class public Lmiui/cloud/sync/MiCloudStatusInfo;
.super Ljava/lang/Object;
.source "MiCloudStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;,
        Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    }
.end annotation


# instance fields
.field private mQuotaInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->mUserId:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static fromUserData(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 84
    .local v1, "am":Landroid/accounts/AccountManager;
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 85
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 86
    const/4 v3, 0x0

    .line 101
    :cond_0
    :goto_0
    return-object v3

    .line 88
    :cond_1
    const-string v5, "extra_micloud_status_info_quota"

    invoke-virtual {v1, v0, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "str":Ljava/lang/String;
    new-instance v3, Lmiui/cloud/sync/MiCloudStatusInfo;

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v3, v5}, Lmiui/cloud/sync/MiCloudStatusInfo;-><init>(Ljava/lang/String;)V

    .line 91
    .local v3, "statusInfo":Lmiui/cloud/sync/MiCloudStatusInfo;
    invoke-virtual {v3, v4}, Lmiui/cloud/sync/MiCloudStatusInfo;->parseQuotaString(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v3}, Lmiui/cloud/sync/MiCloudStatusInfo;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object v2

    .line 95
    .local v2, "qInfo":Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getWarn()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 97
    :cond_2
    const-string v5, "MiCloudStatusInfo"

    const-string v6, "deserialize failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v5, "extra_micloud_status_info_quota"

    const-string v6, ""

    invoke-virtual {v1, v0, v5, v6}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->mQuotaInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    return-object v0
.end method

.method public parseQuotaString(Ljava/lang/String;)V
    .locals 4
    .param p1, "quota"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const-string v1, "MiCloudStatusInfo"

    const-string v2, "parseQuotaString() quota is empty."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput-object v3, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->mQuotaInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 52
    :goto_0
    return-void

    .line 47
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->getQuotaInfo(Lmiui/cloud/sync/MiCloudStatusInfo;Lorg/json/JSONObject;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object v1

    iput-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->mQuotaInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "MiCloudStatusInfo"

    const-string v2, "catch JSONException in parseQuotaString()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iput-object v3, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->mQuotaInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    goto :goto_0
.end method
