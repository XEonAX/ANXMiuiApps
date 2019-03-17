.class public Lmiui/cloud/stat/MiCloudStatUtil;
.super Ljava/lang/Object;
.source "MiCloudStatUtil.java"


# direct methods
.method public static performSyncErrorStat(Landroid/content/Context;JLandroid/os/Bundle;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeStart"    # J
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lmiui/cloud/stat/MiCloudStatUtil;->performSyncTimeConsumeStat(Landroid/content/Context;JZ)V

    .line 70
    invoke-static {p0, p3}, Lmiui/cloud/stat/MiCloudStatUtil;->performSyncResultStat(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 71
    invoke-static {p0, p3}, Lmiui/cloud/stat/MiCloudStatUtil;->performSyncPhoneStateStat(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 72
    return-void
.end method

.method public static performSyncPhoneStateStat(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 126
    const-string v3, "MiCloudStatUtil"

    const-string v4, "performSyncPhoneState: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-object v3, Lmiui/cloud/util/SyncStateChangedHelper;->SYNC_SETTINGS_PROVIDER_INSTALLED:Lcom/miui/app/ProviderInstalled;

    invoke-virtual {v3, p0}, Lcom/miui/app/ProviderInstalled;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    const-string v3, "MiCloudStatUtil"

    const-string v4, "provider not available, skip"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 133
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "micloud_force"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 134
    .local v0, "isForceSync":Z
    const-string/jumbo v3, "stat_key_sync_start"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 135
    .local v1, "isSyncStart":Z
    const-string v3, "micloud_force"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 136
    const-string/jumbo v3, "stat_key_sync_start"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 137
    sget-object v3, Lmiui/cloud/util/SyncStateChangedHelper;->OPEN_SYNC_PHONE_STATE:Landroid/net/Uri;

    invoke-static {p0, v3, v2}, Lcom/miui/utils/SafeContentResolver;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private static performSyncResultStat(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 76
    const-string v9, "MiCloudStatUtil"

    const-string v10, "performSyncResultStat: "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v9, Lmiui/cloud/util/SyncStateChangedHelper;->SYNC_SETTINGS_PROVIDER_INSTALLED:Lcom/miui/app/ProviderInstalled;

    invoke-virtual {v9, p0}, Lcom/miui/app/ProviderInstalled;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_0

    .line 78
    const-string v9, "MiCloudStatUtil"

    const-string v10, "provider not available, skip"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v9, "micloud_ignore_temperature"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 82
    .local v3, "isIgnoreTemperature":Z
    const-string v9, "micloud_ignore_wifi_settings"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 83
    .local v4, "isIgnoreWifiSettings":Z
    const-string v9, "micloud_ignore_battery_low"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 84
    .local v2, "isIgnoreBatteryLow":Z
    const-string v9, "micloud_force"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 86
    .local v1, "isForceSync":Z
    const-string/jumbo v9, "stat_key_sync_retry"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 87
    .local v5, "isRetry":Z
    const-string/jumbo v9, "stat_key_sync_reason"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, "reason":Ljava/lang/String;
    const-string/jumbo v9, "stat_key_sync_authority"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "authority":Ljava/lang/String;
    const-string/jumbo v9, "stat_key_sync_successful"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 91
    .local v6, "isSuccessful":Z
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "micloud_ignore_temperature"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 93
    const-string v9, "micloud_ignore_wifi_settings"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 94
    const-string v9, "micloud_ignore_battery_low"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 95
    const-string v9, "micloud_force"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 96
    const-string/jumbo v9, "stat_key_sync_retry"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 97
    const-string/jumbo v9, "stat_key_sync_reason"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v9, "stat_key_sync_successful"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 99
    const-string/jumbo v9, "stat_key_sync_authority"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v9, Lmiui/cloud/util/SyncStateChangedHelper;->OPEN_SYNC_RESULT_URI:Landroid/net/Uri;

    invoke-static {p0, v9, v8}, Lcom/miui/utils/SafeContentResolver;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method public static performSyncSuccessStat(Landroid/content/Context;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "timeStart"    # J
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-static {p4, p1}, Lmiui/cloud/stat/MiCloudStatUtil;->wrapSuccessBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x1

    invoke-static {p0, p2, p3, v0}, Lmiui/cloud/stat/MiCloudStatUtil;->performSyncTimeConsumeStat(Landroid/content/Context;JZ)V

    .line 63
    invoke-static {p0, p4}, Lmiui/cloud/stat/MiCloudStatUtil;->performSyncResultStat(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 64
    invoke-static {p0, p4}, Lmiui/cloud/stat/MiCloudStatUtil;->performSyncPhoneStateStat(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method private static performSyncTimeConsumeStat(Landroid/content/Context;JZ)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeStart"    # J
    .param p3, "isSuccessful"    # Z

    .prologue
    .line 106
    const-string v5, "MiCloudStatUtil"

    const-string v6, "performSyncTimeConsumeStat: "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v5, Lmiui/cloud/util/SyncStateChangedHelper;->SYNC_SETTINGS_PROVIDER_INSTALLED:Lcom/miui/app/ProviderInstalled;

    invoke-virtual {v5, p0}, Lcom/miui/app/ProviderInstalled;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 108
    const-string v5, "MiCloudStatUtil"

    const-string v6, "provider not available, skip"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 113
    .local v2, "timeEnd":J
    sub-long v0, v2, p1

    .line 114
    .local v0, "timeConsume":J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 115
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "stat_key_sync_time_consume"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    if-eqz p3, :cond_1

    .line 117
    const-string/jumbo v5, "stat_key_sync_successful"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 121
    :goto_1
    sget-object v5, Lmiui/cloud/util/SyncStateChangedHelper;->OPEN_SYNC_TIME_CONSUME:Landroid/net/Uri;

    invoke-static {p0, v5, v4}, Lcom/miui/utils/SafeContentResolver;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 119
    :cond_1
    const-string/jumbo v5, "stat_key_sync_successful"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1
.end method

.method public static wrapErrorBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "retry"    # Z

    .prologue
    const/4 v1, 0x0

    .line 141
    const-string/jumbo v0, "stat_key_sync_start"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    const-string/jumbo v0, "stat_key_sync_authority"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v0, "stat_key_sync_successful"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    const-string/jumbo v0, "stat_key_sync_reason"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v0, "stat_key_sync_retry"

    invoke-virtual {p0, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    return-void
.end method

.method private static wrapSuccessBundle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 149
    const-string/jumbo v0, "stat_key_sync_start"

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    const-string/jumbo v0, "stat_key_sync_authority"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v0, "stat_key_sync_successful"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    const-string/jumbo v0, "stat_key_sync_retry"

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    const-string/jumbo v0, "stat_key_sync_reason"

    const-string v1, "no_error"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method
