.class public Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;
.super Lcom/xiaomi/push/mpcd/job/CollectionJob;
.source "WifiDevicesMacCollectionJob.java"


# instance fields
.field private mDevicesMac:Ljava/lang/String;

.field private mMacDataListener:Lcom/xiaomi/metoknlp/devicediscover/DataListener;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private final object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "period"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/mpcd/job/CollectionJob;-><init>(Landroid/content/Context;I)V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->object:Ljava/lang/Object;

    .line 42
    new-instance v0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob$1;-><init>(Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;)V

    iput-object v0, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->mMacDataListener:Lcom/xiaomi/metoknlp/devicediscover/DataListener;

    .line 78
    invoke-direct {p0, p1}, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->initMetokNLP(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method static synthetic access$002(Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->mDevicesMac:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->getMacsFromJSON(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->object:Ljava/lang/Object;

    return-object v0
.end method

.method private static getMacsFromJSON(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 60
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "deviceInfo":Lorg/json/JSONObject;
    const-string v4, "devices"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 62
    .local v1, "macsArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "macsString":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 65
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 69
    .end local v0    # "deviceInfo":Lorg/json/JSONObject;
    .end local v1    # "macsArray":Lorg/json/JSONArray;
    .end local v2    # "macsString":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 67
    :catch_0
    move-exception v4

    .line 69
    :cond_0
    const-string v4, ""

    goto :goto_0
.end method

.method private initMetokNLP(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    invoke-static {p1}, Lcom/xiaomi/metoknlp/MetokApplication;->create(Landroid/content/Context;)Lcom/xiaomi/metoknlp/MetokApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/MetokApplication;->init()V

    .line 139
    invoke-static {}, Lcom/xiaomi/metoknlp/MetokApplication;->get()Lcom/xiaomi/metoknlp/MetokApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->mMacDataListener:Lcom/xiaomi/metoknlp/devicediscover/DataListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/metoknlp/MetokApplication;->registerDataListener(Lcom/xiaomi/metoknlp/devicediscover/DataListener;I)V

    .line 140
    return-void
.end method


# virtual methods
.method protected checkPeriodAndRecord()Z
    .locals 14

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->isWifiChanged()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 118
    iget-object v7, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->getJobId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->period:I

    int-to-long v10, v9

    invoke-static {v7, v8, v10, v11}, Lcom/xiaomi/channel/commonutils/misc/JobMutualExclusor;->checkPeriodAndRecordWithFileLock(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v7

    .line 133
    :cond_0
    :goto_0
    return v7

    .line 121
    :cond_1
    iget-object v9, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v9

    sget-object v10, Lcom/xiaomi/xmpush/thrift/ConfigKey;->WifiDevicesMacWifiUnchangedCollectionFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 122
    invoke-virtual {v10}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v10

    const/16 v11, 0x1c20

    .line 121
    invoke-virtual {v9, v10, v11}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v6

    .line 124
    .local v6, "periodWifiUnchanged":I
    const/16 v9, 0xe10

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 126
    .local v2, "currentTimeStamp":J
    iget-object v9, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->context:Landroid/content/Context;

    const-string v10, "mipush_extra"

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 127
    iget-object v9, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v10, "last_mac_upload_timestamp"

    const-wide/16 v12, 0x0

    invoke-interface {v9, v10, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 129
    .local v4, "lastUploadMacTimeStamp":J
    sub-long v10, v2, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    long-to-float v9, v10

    mul-int/lit16 v10, v6, 0x3e8

    int-to-float v10, v10

    const v11, 0x3f666666    # 0.9f

    mul-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_3

    move v0, v7

    .line 131
    .local v0, "canSelfUpload":Z
    :goto_1
    iget-object v9, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->getJobId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    int-to-long v12, v6

    invoke-static {v9, v10, v12, v13}, Lcom/xiaomi/channel/commonutils/misc/JobMutualExclusor;->checkPeriodAndRecordWithFileLock(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v1

    .line 133
    .local v1, "isMutualExclusive":Z
    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    :cond_2
    move v7, v8

    goto :goto_0

    .end local v0    # "canSelfUpload":Z
    .end local v1    # "isMutualExclusive":Z
    :cond_3
    move v0, v8

    .line 129
    goto :goto_1
.end method

.method public collectInfo()Ljava/lang/String;
    .locals 8

    .prologue
    .line 85
    iget-object v3, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/network/Network;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    invoke-static {}, Lcom/xiaomi/metoknlp/MetokApplication;->get()Lcom/xiaomi/metoknlp/MetokApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/metoknlp/MetokApplication;->fecthDeviceImmediately()V

    .line 87
    iget-object v4, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->object:Ljava/lang/Object;

    monitor-enter v4

    .line 89
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->object:Ljava/lang/Object;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :goto_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    iget-object v3, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->context:Landroid/content/Context;

    const-string v4, "mipush_extra"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 95
    iget-object v3, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 96
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "last_mac_upload_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->mDevicesMac:Ljava/lang/String;

    .line 101
    .local v0, "content":Ljava/lang/String;
    const-string v3, ""

    iput-object v3, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->mDevicesMac:Ljava/lang/String;

    .line 102
    return-object v0

    .line 90
    .end local v0    # "content":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 93
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public getCollectionType()Lcom/xiaomi/xmpush/thrift/ClientCollectionType;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->WifiDevicesMac:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    return-object v0
.end method

.method public getJobId()I
    .locals 1

    .prologue
    .line 112
    const/16 v0, 0xe

    return v0
.end method

.method public isWifiChanged()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 145
    :try_start_0
    iget-object v6, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->context:Landroid/content/Context;

    const-string v7, "mipush_extra"

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 146
    iget-object v6, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v7, "last_wifi_ssid"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "lastWifiSSID":Ljava/lang/String;
    iget-object v6, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->context:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 149
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 150
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 151
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_0

    .line 152
    iget-object v6, p0, Lcom/xiaomi/push/mpcd/job/WifiDevicesMacCollectionJob;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "last_wifi_ssid"

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    .line 163
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "lastWifiSSID":Ljava/lang/String;
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return v4

    .line 158
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "lastWifiSSID":Ljava/lang/String;
    .restart local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 161
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "lastWifiSSID":Ljava/lang/String;
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v5

    goto :goto_0
.end method
