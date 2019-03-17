.class public Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;
.super Ljava/lang/Object;
.source "CloudUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;
    }
.end annotation


# static fields
.field private static final SERVER_RETRY_INTERVALS:[I

.field private static final URL_RELOCATION_QUERY:Ljava/lang/String;

.field private static volatile sHostsCacheInner:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sNeedUpdateHosts:Z

.field private static sUpdateMiCloudHostsLock:Ljava/lang/Object;

.field private static sUpdateStatus:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->SERVER_RETRY_INTERVALS:[I

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/RequestConstants$URL;->URL_RELOCATION_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mic/relocation/v3/user/record"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->URL_RELOCATION_QUERY:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sHostsCacheInner:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    .line 86
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getHostList()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sNeedUpdateHosts:Z

    return-void

    .line 63
    :array_0
    .array-data 4
        0x3e8
        0x7d0
        0x1388
        0x2710
    .end array-data
.end method

.method public static checkRedirect(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p0, "response"    # Ljava/lang/String;
    .param p1, "redirectCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CloudServerException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2732

    const/16 v7, 0x1f7

    .line 97
    const/16 v5, 0xf

    if-lt p1, v5, :cond_0

    .line 98
    new-instance v5, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    const/16 v6, 0xa

    invoke-direct {v5, v7, v8, v6}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(III)V

    throw v5

    .line 101
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    .local v3, "responseJSON":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x134

    if-ne v5, v6, :cond_2

    .line 103
    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 104
    .local v0, "data":Lorg/json/JSONObject;
    const-string v5, "isPermanent"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 105
    .local v2, "isPermanent":Z
    if-eqz v2, :cond_1

    .line 106
    const/4 v5, 0x1

    sput-boolean v5, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sNeedUpdateHosts:Z

    .line 108
    :cond_1
    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "redirectUrl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "isPermanent":Z
    .end local v3    # "responseJSON":Lorg/json/JSONObject;
    :goto_0
    return-object v5

    .line 109
    .restart local v3    # "responseJSON":Lorg/json/JSONObject;
    :cond_2
    const-string v5, "code"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 110
    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "retryAfter"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 111
    .local v4, "retryTime":I
    new-instance v5, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    const/16 v6, 0x1f7

    const/16 v7, 0x1f7

    invoke-direct {v5, v6, v7, v4}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(III)V

    throw v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v3    # "responseJSON":Lorg/json/JSONObject;
    .end local v4    # "retryTime":I
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "CloudUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSONException in checkRedirect():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 112
    .restart local v3    # "responseJSON":Lorg/json/JSONObject;
    :cond_4
    :try_start_1
    const-string v5, "code"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 113
    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "retryAfter"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 114
    .restart local v4    # "retryTime":I
    new-instance v5, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    const/16 v6, 0x1f7

    const/16 v7, 0x2732

    invoke-direct {v5, v6, v7, v4}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(III)V

    throw v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private static getHostCache()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sHostsCacheInner:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private static getHostList()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 397
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getPersistHostsFromSp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    const-string v0, "CloudUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    const-string v0, "CloudUtils"

    const-string v1, "get hostlist from sp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_micloud_hosts_v2"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    :goto_0
    return-object v0

    .line 403
    :cond_1
    const-string v0, "CloudUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 404
    const-string v0, "CloudUtils"

    const-string v1, "get hostlist from settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_2
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "micloud_hosts_v2"

    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getHostWithScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "hostKey"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x3

    .line 354
    const-string v8, "CloudUtils"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 355
    const-string v8, "CloudUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Enter getHost key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getHostCache()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 358
    .local v3, "hostValueObj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 359
    .local v2, "hostValue":Ljava/lang/String;
    if-eqz v3, :cond_1

    instance-of v8, v3, Ljava/lang/String;

    if-eqz v8, :cond_1

    move-object v2, v3

    .line 360
    check-cast v2, Ljava/lang/String;

    .line 362
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 363
    const-string v7, "CloudUtils"

    invoke-static {v7, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 364
    const-string v7, "CloudUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Hit host cache directly return host = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v7, v2

    .line 389
    :cond_3
    :goto_0
    return-object v7

    .line 368
    :cond_4
    const/4 v4, 0x0

    .line 369
    .local v4, "hostlist":Lorg/json/JSONObject;
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getHostList()Ljava/lang/String;

    move-result-object v6

    .line 370
    .local v6, "hosts":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 371
    const-string v8, "CloudUtils"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 372
    const-string v8, "CloudUtils"

    const-string v9, "Hosts in SystemSettings/sp = null, return null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    :cond_5
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v4    # "hostlist":Lorg/json/JSONObject;
    .local v5, "hostlist":Lorg/json/JSONObject;
    :try_start_1
    invoke-static {v5}, Lcom/xiaomi/micloudsdk/utils/JsonUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->updateHostCache(Ljava/util/Map;)V

    .line 379
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getHostCache()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 380
    if-eqz v3, :cond_6

    instance-of v8, v3, Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 381
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 383
    :cond_6
    const-string v8, "CloudUtils"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 384
    const-string v8, "CloudUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "find host in SystemSettings/sp return host = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    move-object v7, v2

    .line 386
    goto :goto_0

    .line 387
    .end local v5    # "hostlist":Lorg/json/JSONObject;
    .restart local v4    # "hostlist":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 388
    .local v1, "e":Lorg/json/JSONException;
    :goto_1
    const-string v8, "CloudUtils"

    const-string v9, "JSONException in getHost, return null"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 387
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v4    # "hostlist":Lorg/json/JSONObject;
    .restart local v5    # "hostlist":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "hostlist":Lorg/json/JSONObject;
    .restart local v4    # "hostlist":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private static getPersistHostsFromSp()Z
    .locals 3

    .prologue
    .line 474
    const-string/jumbo v0, "true"

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "micloud_updatehosts_third_party"

    invoke-static {v1, v2}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXiaomiAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 426
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public static getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 435
    .local v2, "am":Landroid/accounts/AccountManager;
    const-string v3, "com.xiaomi"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 436
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v3, v1

    if-lez v3, :cond_0

    .line 437
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 440
    :cond_0
    return-object v0
.end method

.method private static getXiaomiAccountName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 460
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getPersistHostsFromSp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    const-string v0, "CloudUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const-string v0, "CloudUtils"

    const-string v1, "get accountName from sp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_micloud_accountname_v2"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    :goto_0
    return-object v0

    .line 466
    :cond_1
    const-string v0, "CloudUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 467
    const-string v0, "CloudUtils"

    const-string v1, "get accountName from settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_2
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "micloud_accountname_v2"

    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isInternationalAccount(Z)I
    .locals 9
    .param p0, "needRefresh"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 148
    if-eqz p0, :cond_0

    .line 149
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->updateHostCache(Ljava/util/Map;)V

    .line 152
    :cond_0
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getHostCache()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 153
    sput-boolean v6, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sNeedUpdateHosts:Z

    .line 155
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->updateMiCloudHosts(Z)V
    :try_end_0
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getHostCache()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 185
    :cond_1
    :goto_0
    return v5

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    const-string v6, "CloudUtils"

    const-string v7, "CloudServerException in isInternationalAccount"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 165
    .end local v0    # "e":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    :cond_2
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getHostCache()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 166
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 167
    .local v3, "k":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 169
    .local v4, "v":Ljava/lang/Object;
    instance-of v8, v4, Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 173
    check-cast v4, Ljava/lang/String;

    .end local v4    # "v":Ljava/lang/Object;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "host":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 179
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    move v5, v6

    .line 181
    goto :goto_0
.end method

.method private static setHostList(Ljava/lang/String;)V
    .locals 2
    .param p0, "hosts"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    .line 411
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getPersistHostsFromSp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    const-string v0, "CloudUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "CloudUtils"

    const-string v1, "set hostlist to sp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 416
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_micloud_hosts_v2"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 423
    :goto_0
    return-void

    .line 418
    :cond_1
    const-string v0, "CloudUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    const-string v0, "CloudUtils"

    const-string v1, "set hostlist to settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_2
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "micloud_hosts_v2"

    invoke-static {v0, v1, p0}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static setXiaomiAccountName(Ljava/lang/String;)V
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    .line 444
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getPersistHostsFromSp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    const-string v0, "CloudUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    const-string v0, "CloudUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set accountName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to sp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 449
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_micloud_accountname_v2"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 457
    :goto_0
    return-void

    .line 451
    :cond_1
    const-string v0, "CloudUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    const-string v0, "CloudUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set accountName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to settings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_2
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "micloud_accountname_v2"

    invoke-static {v0, v1, p0}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static updateHostCache(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sHostsCacheInner:Ljava/util/Map;

    .line 73
    return-void
.end method

.method private static updateMiCloudHosts(Z)V
    .locals 20
    .param p0, "forceUpdateCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CloudServerException;
        }
    .end annotation

    .prologue
    .line 189
    const-string v16, "CloudUtils"

    const/16 v17, 0x3

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 190
    const-string v16, "CloudUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "enter updateMiCloudHosts, sNeedUpdateHosts: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-boolean v18, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sNeedUpdateHosts:Z

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getXiaomiAccountName()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getXiaomiAccountName()Ljava/lang/String;

    move-result-object v16

    .line 193
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->getAccountName()Ljava/lang/String;

    move-result-object v17

    .line 192
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 198
    const/16 v16, 0x1

    sput-boolean v16, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sNeedUpdateHosts:Z

    .line 201
    :cond_1
    sget-boolean v16, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sNeedUpdateHosts:Z

    if-nez v16, :cond_2

    if-eqz p0, :cond_8

    .line 203
    :cond_2
    const/4 v9, 0x1

    .line 204
    .local v9, "needDo":Z
    :try_start_0
    sget-object v17, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    monitor-enter v17
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    :try_start_1
    sget-object v16, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sUpdateStatus:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    sget-object v18, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;->UPDATING:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 206
    const-string v16, "CloudUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Waiting for an existing updateMiCloudHosts to finish "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 207
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 206
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-object v16, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->wait()V

    .line 209
    const-string v16, "CloudUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "The existing updateMiCloudHosts finished "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 210
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 209
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget-object v16, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sUpdateStatus:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    sget-object v18, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;->SUCCESS:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_3

    const/4 v9, 0x1

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 214
    :cond_4
    if-eqz v9, :cond_5

    .line 215
    sget-object v16, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;->UPDATING:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    sput-object v16, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sUpdateStatus:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    .line 218
    :cond_5
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    if-eqz v9, :cond_8

    .line 221
    const/4 v15, 0x0

    .line 223
    .local v15, "success":Z
    :try_start_2
    const-string v16, "CloudUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updateMiCloudHosts "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    .local v10, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_3
    const-string v16, "miui.os.Build"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 227
    .local v3, "buildClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v16, "getRegion"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 228
    .local v6, "getRegionMethod":Ljava/lang/reflect/Method;
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 229
    .local v14, "romCountry":Ljava/lang/String;
    invoke-static {v14}, Lcom/xiaomi/micloudsdk/request/utils/Request;->setRegion(Ljava/lang/String;)V

    .line 230
    const-string v16, "romCountry"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    .end local v3    # "buildClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "getRegionMethod":Ljava/lang/reflect/Method;
    .end local v14    # "romCountry":Ljava/lang/String;
    :goto_2
    :try_start_4
    const-string v16, "romCountry"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/CharSequence;

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 236
    const-string v16, "CloudUtils"

    const-string v17, "request romCountry null, thirdparty app"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v16

    const-string v17, "micloud_updatehosts_third_party"

    const-string/jumbo v18, "true"

    invoke-static/range {v16 .. v18}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 243
    :goto_3
    const/4 v12, 0x0

    .line 244
    .local v12, "responseJSON":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 245
    .local v7, "hostList":Lorg/json/JSONObject;
    const/4 v8, 0x0

    .local v8, "i":I
    move-object v13, v12

    .line 247
    .end local v12    # "responseJSON":Lorg/json/JSONObject;
    .local v13, "responseJSON":Lorg/json/JSONObject;
    :goto_4
    const/4 v5, 0x0

    .line 248
    .local v5, "failureCause":Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 249
    new-instance v16, Ljava/lang/InterruptedException;

    invoke-direct/range {v16 .. v16}, Ljava/lang/InterruptedException;-><init>()V

    throw v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 308
    .end local v5    # "failureCause":Ljava/lang/Throwable;
    .end local v7    # "hostList":Lorg/json/JSONObject;
    .end local v8    # "i":I
    .end local v10    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "responseJSON":Lorg/json/JSONObject;
    :catchall_0
    move-exception v16

    :try_start_5
    sget-object v18, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    monitor-enter v18
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 309
    if-eqz v15, :cond_11

    :try_start_6
    sget-object v17, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;->SUCCESS:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    :goto_5
    sput-object v17, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sUpdateStatus:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    .line 310
    sget-object v17, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 311
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    throw v16
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    .line 314
    .end local v15    # "success":Z
    :catch_0
    move-exception v4

    .line 315
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string v16, "CloudUtils"

    const-string v17, "InterruptedException in updateMiCloudHosts"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    new-instance v16, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/Throwable;)V

    throw v16

    .line 218
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v16

    :try_start_8
    monitor-exit v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v16
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    .line 231
    .restart local v10    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "success":Z
    :catch_1
    move-exception v4

    .line 232
    .local v4, "e":Ljava/lang/Exception;
    :try_start_a
    const-string v16, "CloudUtils"

    const-string v17, "Exception in updateMiCloudHosts()"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    const-string v16, "romCountry"

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getRegion()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 239
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v16, "CloudUtils"

    const-string v17, "request romCountry not null, system app"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v16

    const-string v17, "micloud_updatehosts_third_party"

    const-string v18, "false"

    invoke-static/range {v16 .. v18}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 252
    .restart local v5    # "failureCause":Ljava/lang/Throwable;
    .restart local v7    # "hostList":Lorg/json/JSONObject;
    .restart local v8    # "i":I
    .restart local v13    # "responseJSON":Lorg/json/JSONObject;
    :cond_7
    :try_start_b
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "accountName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_b .. :try_end_b} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v16

    if-eqz v16, :cond_a

    .line 254
    const/4 v15, 0x1

    .line 308
    :try_start_c
    sget-object v17, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    monitor-enter v17
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0

    .line 309
    if-eqz v15, :cond_9

    :try_start_d
    sget-object v16, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;->SUCCESS:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    :goto_6
    sput-object v16, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sUpdateStatus:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    .line 310
    sget-object v16, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->notifyAll()V

    .line 311
    monitor-exit v17

    .line 319
    .end local v2    # "accountName":Ljava/lang/String;
    .end local v5    # "failureCause":Ljava/lang/Throwable;
    .end local v7    # "hostList":Lorg/json/JSONObject;
    .end local v8    # "i":I
    .end local v9    # "needDo":Z
    .end local v10    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "responseJSON":Lorg/json/JSONObject;
    .end local v15    # "success":Z
    :cond_8
    :goto_7
    return-void

    .line 309
    .restart local v2    # "accountName":Ljava/lang/String;
    .restart local v5    # "failureCause":Ljava/lang/Throwable;
    .restart local v7    # "hostList":Lorg/json/JSONObject;
    .restart local v8    # "i":I
    .restart local v9    # "needDo":Z
    .restart local v10    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "responseJSON":Lorg/json/JSONObject;
    .restart local v15    # "success":Z
    :cond_9
    sget-object v16, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;->FAILED:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    goto :goto_6

    .line 311
    :catchall_2
    move-exception v16

    monitor-exit v17
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v16
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0

    .line 257
    :cond_a
    :try_start_f
    sget-object v16, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->URL_RELOCATION_QUERY:Ljava/lang/String;

    .line 258
    move-object/from16 v0, v16

    invoke-static {v0, v10}, Lcom/xiaomi/micloudsdk/request/utils/Request;->securePost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 259
    .local v11, "response":Ljava/lang/String;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_f .. :try_end_f} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 260
    .end local v13    # "responseJSON":Lorg/json/JSONObject;
    .restart local v12    # "responseJSON":Lorg/json/JSONObject;
    :try_start_10
    const-string v16, "code"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_d

    .line 261
    const-string v16, "data"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string v17, "hostList"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 262
    if-eqz v7, :cond_b

    .line 263
    const-string v16, "CloudUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getHostList set sNeedUpdateHosts to false "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 264
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 263
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->setHostList(Ljava/lang/String;)V

    .line 266
    invoke-static {v7}, Lcom/xiaomi/micloudsdk/utils/JsonUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->updateHostCache(Ljava/util/Map;)V

    .line 267
    const/16 v16, 0x0

    sput-boolean v16, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sNeedUpdateHosts:Z

    .line 268
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_b

    .line 269
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->setXiaomiAccountName(Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 272
    :cond_b
    const/4 v15, 0x1

    .line 308
    :try_start_11
    sget-object v17, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    monitor-enter v17
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_0

    .line 309
    if-eqz v15, :cond_10

    :try_start_12
    sget-object v16, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;->SUCCESS:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    :goto_8
    sput-object v16, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sUpdateStatus:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    .line 310
    sget-object v16, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->sUpdateMiCloudHostsLock:Ljava/lang/Object;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->notifyAll()V

    .line 311
    monitor-exit v17

    goto :goto_7

    :catchall_3
    move-exception v16

    monitor-exit v17
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    throw v16
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_0

    .line 276
    .end local v2    # "accountName":Ljava/lang/String;
    .end local v11    # "response":Ljava/lang/String;
    .end local v12    # "responseJSON":Lorg/json/JSONObject;
    .restart local v13    # "responseJSON":Lorg/json/JSONObject;
    :catch_2
    move-exception v4

    move-object v12, v13

    .line 277
    .end local v13    # "responseJSON":Lorg/json/JSONObject;
    .local v4, "e":Lorg/json/JSONException;
    .restart local v12    # "responseJSON":Lorg/json/JSONObject;
    :goto_9
    :try_start_14
    const-string v16, "CloudUtils"

    const-string v17, "JSONException in updateMiCloudHosts"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    new-instance v16, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/Throwable;)V

    throw v16

    .line 279
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v12    # "responseJSON":Lorg/json/JSONObject;
    .restart local v13    # "responseJSON":Lorg/json/JSONObject;
    :catch_3
    move-exception v4

    move-object v12, v13

    .line 280
    .end local v13    # "responseJSON":Lorg/json/JSONObject;
    .local v4, "e":Ljavax/crypto/IllegalBlockSizeException;
    .restart local v12    # "responseJSON":Lorg/json/JSONObject;
    :goto_a
    const-string v16, "CloudUtils"

    const-string v17, "IllegalBlockSizeException in updateMiCloudHosts"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    new-instance v16, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/Throwable;)V

    throw v16

    .line 282
    .end local v4    # "e":Ljavax/crypto/IllegalBlockSizeException;
    .end local v12    # "responseJSON":Lorg/json/JSONObject;
    .restart local v13    # "responseJSON":Lorg/json/JSONObject;
    :catch_4
    move-exception v4

    move-object v12, v13

    .line 283
    .end local v13    # "responseJSON":Lorg/json/JSONObject;
    .local v4, "e":Ljavax/crypto/BadPaddingException;
    .restart local v12    # "responseJSON":Lorg/json/JSONObject;
    :goto_b
    const-string v16, "CloudUtils"

    const-string v17, "BadPaddingException in updateMiCloudHosts"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    new-instance v16, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/Throwable;)V

    throw v16

    .line 285
    .end local v4    # "e":Ljavax/crypto/BadPaddingException;
    .end local v12    # "responseJSON":Lorg/json/JSONObject;
    .restart local v13    # "responseJSON":Lorg/json/JSONObject;
    :catch_5
    move-exception v4

    move-object v12, v13

    .line 286
    .end local v13    # "responseJSON":Lorg/json/JSONObject;
    .local v4, "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v12    # "responseJSON":Lorg/json/JSONObject;
    :goto_c
    const-string v16, "CloudUtils"

    const-string v17, "ClientProtocolException in updateMiCloudHosts"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    new-instance v16, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/Throwable;)V

    throw v16

    .line 288
    .end local v4    # "e":Lorg/apache/http/client/ClientProtocolException;
    .end local v12    # "responseJSON":Lorg/json/JSONObject;
    .restart local v13    # "responseJSON":Lorg/json/JSONObject;
    :catch_6
    move-exception v4

    move-object v12, v13

    .line 289
    .end local v13    # "responseJSON":Lorg/json/JSONObject;
    .local v4, "e":Ljava/io/IOException;
    .restart local v12    # "responseJSON":Lorg/json/JSONObject;
    :goto_d
    const-string v16, "CloudUtils"

    const-string v17, "IOException in updateMiCloudHosts"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/xiaomi/micloudsdk/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 291
    const-string v16, "CloudUtils"

    const-string v17, "No network in IOException"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v16, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/Throwable;)V

    throw v16

    .line 294
    :cond_c
    move-object v5, v4

    .line 296
    .end local v4    # "e":Ljava/io/IOException;
    :cond_d
    sget-object v16, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->SERVER_RETRY_INTERVALS:[I

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v8, v0, :cond_e

    .line 297
    const-string v16, "CloudUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Wait "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->SERVER_RETRY_INTERVALS:[I

    aget v18, v18, v8

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ms for retry"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v16, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->SERVER_RETRY_INTERVALS:[I

    aget v16, v16, v8

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 299
    add-int/lit8 v8, v8, 0x1

    move-object v13, v12

    .line 306
    .end local v12    # "responseJSON":Lorg/json/JSONObject;
    .restart local v13    # "responseJSON":Lorg/json/JSONObject;
    goto/16 :goto_4

    .line 301
    .end local v13    # "responseJSON":Lorg/json/JSONObject;
    .restart local v12    # "responseJSON":Lorg/json/JSONObject;
    :cond_e
    if-eqz v5, :cond_f

    .line 302
    new-instance v16, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/Throwable;)V

    throw v16

    .line 304
    :cond_f
    new-instance v16, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(I)V

    throw v16
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 309
    .restart local v2    # "accountName":Ljava/lang/String;
    .restart local v11    # "response":Ljava/lang/String;
    :cond_10
    :try_start_15
    sget-object v16, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;->FAILED:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto/16 :goto_8

    .end local v2    # "accountName":Ljava/lang/String;
    .end local v5    # "failureCause":Ljava/lang/Throwable;
    .end local v7    # "hostList":Lorg/json/JSONObject;
    .end local v8    # "i":I
    .end local v10    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "response":Ljava/lang/String;
    .end local v12    # "responseJSON":Lorg/json/JSONObject;
    :cond_11
    :try_start_16
    sget-object v17, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;->FAILED:Lcom/xiaomi/micloudsdk/request/utils/CloudUtils$UpdateStatus;

    goto/16 :goto_5

    .line 311
    :catchall_4
    move-exception v16

    monitor-exit v18
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :try_start_17
    throw v16
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_0

    .line 288
    .restart local v2    # "accountName":Ljava/lang/String;
    .restart local v5    # "failureCause":Ljava/lang/Throwable;
    .restart local v7    # "hostList":Lorg/json/JSONObject;
    .restart local v8    # "i":I
    .restart local v10    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "response":Ljava/lang/String;
    .restart local v12    # "responseJSON":Lorg/json/JSONObject;
    :catch_7
    move-exception v4

    goto/16 :goto_d

    .line 285
    :catch_8
    move-exception v4

    goto/16 :goto_c

    .line 282
    :catch_9
    move-exception v4

    goto/16 :goto_b

    .line 279
    :catch_a
    move-exception v4

    goto/16 :goto_a

    .line 276
    :catch_b
    move-exception v4

    goto/16 :goto_9
.end method

.method public static updateRequestHost(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "forceUpdateCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CloudServerException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->updateMiCloudHosts(Z)V

    .line 337
    :try_start_0
    const-string v5, "CloudUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Original URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 339
    .local v4, "originalURL":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "host":Ljava/lang/String;
    invoke-static {v1}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getHostWithScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "newHostWithScheme":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 342
    const-string v5, "CloudUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 344
    .local v3, "newUrl":Ljava/net/URL;
    new-instance v5, Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 349
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "newHostWithScheme":Ljava/lang/String;
    .end local v3    # "newUrl":Ljava/net/URL;
    .end local v4    # "originalURL":Ljava/net/URL;
    :cond_0
    :goto_0
    const-string v5, "CloudUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Final URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-object p0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/net/MalformedURLException;
    const-string v5, "CloudUtils"

    const-string v6, "MalformedURLException in updateHost"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
