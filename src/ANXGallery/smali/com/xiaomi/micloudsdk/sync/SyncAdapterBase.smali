.class public abstract Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SyncAdapterBase.java"


# instance fields
.field protected isForceSync:Z

.field protected isIgnoreBatteryLow:Z

.field protected isIgnoreTemperature:Z

.field protected isIgnoreWifiSettings:Z

.field protected isManualSync:Z

.field protected mAccount:Landroid/accounts/Account;

.field protected final mAuthType:Ljava/lang/String;

.field protected mAuthority:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

.field protected mExtTokenStr:Ljava/lang/String;

.field protected mNumbers:[Ljava/lang/String;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mSyncResult:Landroid/content/SyncResult;

.field protected mTickets:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoInitialize"    # Z
    .param p3, "authType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 41
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mTickets:[Ljava/lang/String;

    .line 42
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mNumbers:[Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mResolver:Landroid/content/ContentResolver;

    .line 54
    iput-object p3, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthType:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method getExtTokenStr(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 171
    const/4 v6, 0x0

    .line 173
    .local v6, "authToken":Ljava/lang/String;
    :try_start_0
    const-string v1, "MiCloudSyncAdapterBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPerformSync: getting auth token. authority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 177
    .local v0, "am":Landroid/accounts/AccountManager;
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthType:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v8

    .line 178
    .local v8, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    if-nez v8, :cond_0

    .line 179
    const-string v1, "MiCloudSyncAdapterBase"

    const-string v2, "onPerformSync: Null future."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v9

    .line 197
    .end local v0    # "am":Landroid/accounts/AccountManager;
    .end local v8    # "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :goto_0
    return-object v1

    .line 182
    .restart local v0    # "am":Landroid/accounts/AccountManager;
    .restart local v8    # "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :cond_0
    invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 183
    const-string v1, "MiCloudSyncAdapterBase"

    const-string v2, "onPerformSync: Null future result."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v9

    .line 184
    goto :goto_0

    .line 186
    :cond_1
    invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "authtoken"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    move-object v1, v6

    .line 197
    goto :goto_0

    .line 187
    .end local v0    # "am":Landroid/accounts/AccountManager;
    .end local v8    # "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :catch_0
    move-exception v7

    .line 188
    .local v7, "e":Landroid/accounts/OperationCanceledException;
    const-string v1, "MiCloudSyncAdapterBase"

    const-string v2, "onPerformSync"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v9

    .line 189
    goto :goto_0

    .line 190
    .end local v7    # "e":Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v7

    .line 191
    .local v7, "e":Landroid/accounts/AuthenticatorException;
    const-string v1, "MiCloudSyncAdapterBase"

    const-string v2, "onPerformSync"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v9

    .line 192
    goto :goto_0

    .line 193
    .end local v7    # "e":Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v7

    .line 194
    .local v7, "e":Ljava/io/IOException;
    const-string v1, "MiCloudSyncAdapterBase"

    const-string v2, "onPerformSync"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v9

    .line 195
    goto :goto_0
.end method

.method protected abstract onPerformMiCloudSync(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CloudServerException;
        }
    .end annotation
.end method

.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "provider"    # Landroid/content/ContentProviderClient;
    .param p5, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v3, -0x2711

    .line 60
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/provider/GdprUtils;->isPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iput-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 62
    const-string v0, "MiCloudSyncAdapterBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gdpr Permission deny: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return-void

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAccount:Landroid/accounts/Account;

    .line 67
    iput-object p3, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthority:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mSyncResult:Landroid/content/SyncResult;

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 71
    .local v8, "timeStart":J
    const-string/jumbo v0, "stat_key_sync_start"

    invoke-virtual {p2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lmiui/cloud/stat/MiCloudStatUtil;->performSyncPhoneStateStat(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 74
    const-string v0, "MiCloudSyncAdapterBase"

    const-string v1, "onPerformSync: ---sync start---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v0, "MiCloudSyncAdapterBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    const-string v0, "MiCloudSyncAdapterBase"

    const-string v1, "onPerformSync: master sync automatically is off. do not sync!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :cond_1
    invoke-static {p1, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    const-string v0, "MiCloudSyncAdapterBase"

    const-string v1, "onPerformSync: sync automatically is off. do not sync!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->isSyncPausing(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    const-string v0, "MiCloudSyncAdapterBase"

    const-string v1, "onPerformSync: sync is set to pause. do not sync!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_3
    const-string v0, "micloud_ignore_temperature"

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isIgnoreTemperature:Z

    .line 96
    const-string v0, "micloud_ignore_wifi_settings"

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isIgnoreWifiSettings:Z

    .line 97
    const-string v0, "micloud_ignore_battery_low"

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isIgnoreBatteryLow:Z

    .line 98
    const-string v0, "micloud_force"

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isForceSync:Z

    .line 99
    const-string v0, "force"

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isManualSync:Z

    .line 102
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isForceSync:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isManualSync:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;->isSyncTimeAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 103
    const-string v0, "MiCloudSyncAdapterBase"

    const-string v1, "onPerformSync: sync time is not available. do not sync!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v4, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    const/16 v0, 0x65

    invoke-direct {v4, v3, v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(II)V

    .line 105
    .local v4, "exception":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthType:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p5

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/micloudsdk/sync/MiCloudExceptionHandler;->handleException(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/content/SyncResult;Lcom/xiaomi/micloudsdk/exception/CloudServerException;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 109
    .end local v4    # "exception":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    :cond_4
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isManualSync:Z

    if-eqz v0, :cond_5

    .line 110
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;->resetBackoffStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->getExtTokenStr(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 116
    const-string v0, "MiCloudSyncAdapterBase"

    const-string v1, "onPerformSync: No ext token string."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v4, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-direct {v4, v3, v7}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(II)V

    .line 118
    .restart local v4    # "exception":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthType:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p5

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/micloudsdk/sync/MiCloudExceptionHandler;->handleException(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/content/SyncResult;Lcom/xiaomi/micloudsdk/exception/CloudServerException;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 123
    .end local v4    # "exception":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->parse(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 126
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    invoke-virtual {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->onTransformExtAuthToken(Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V

    .line 127
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    if-nez v0, :cond_7

    .line 128
    const-string v0, "MiCloudSyncAdapterBase"

    const-string v1, "onPerformSync: Cannot parse ext token."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v4, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-direct {v4, v3, v7}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(II)V

    .line 130
    .restart local v4    # "exception":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthType:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p5

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/micloudsdk/sync/MiCloudExceptionHandler;->handleException(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/content/SyncResult;Lcom/xiaomi/micloudsdk/exception/CloudServerException;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 136
    .end local v4    # "exception":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    :cond_7
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->onPerformMiCloudSync(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mSyncResult:Landroid/content/SyncResult;

    invoke-virtual {v0}, Landroid/content/SyncResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 144
    const-string v0, "MiCloudSyncAdapterBase"

    const-string v1, "onPerformSync: hasError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mSyncResult:Landroid/content/SyncResult;

    invoke-virtual {v0}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 146
    const-string v0, "MiCloudSyncAdapterBase"

    const-string v1, "onPerformSync: softError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v4, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-direct {v4, v3, v6}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(II)V

    .line 148
    .restart local v4    # "exception":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthType:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p5

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/micloudsdk/sync/MiCloudExceptionHandler;->handleException(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/content/SyncResult;Lcom/xiaomi/micloudsdk/exception/CloudServerException;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 154
    .end local v4    # "exception":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v9, p2}, Lmiui/cloud/stat/MiCloudStatUtil;->performSyncErrorStat(Landroid/content/Context;JLandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 137
    :catch_0
    move-exception v4

    .line 138
    .restart local v4    # "exception":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    const-string v0, "MiCloudSyncAdapterBase"

    const-string v1, "onPerformSync"

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthType:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p5

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/micloudsdk/sync/MiCloudExceptionHandler;->handleException(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/content/SyncResult;Lcom/xiaomi/micloudsdk/exception/CloudServerException;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 140
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v9, p2}, Lmiui/cloud/stat/MiCloudStatUtil;->performSyncErrorStat(Landroid/content/Context;JLandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 149
    .end local v4    # "exception":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mSyncResult:Landroid/content/SyncResult;

    invoke-virtual {v0}, Landroid/content/SyncResult;->hasHardError()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 150
    const-string v0, "MiCloudSyncAdapterBase"

    const-string v1, "onPerformSync: hardError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v4, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    const/4 v0, 0x2

    invoke-direct {v4, v3, v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(II)V

    .line 152
    .restart local v4    # "exception":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthType:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p5

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/micloudsdk/sync/MiCloudExceptionHandler;->handleException(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/content/SyncResult;Lcom/xiaomi/micloudsdk/exception/CloudServerException;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 156
    .end local v4    # "exception":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    :cond_a
    const-string v0, "MiCloudSyncAdapterBase"

    const-string v1, "onPerformSync: NoError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;->resetBackoffStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/xiaomi/micloudsdk/sync/utils/SyncRecordUtils;->recordSyncResultSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, v8, v9, p2}, Lmiui/cloud/stat/MiCloudStatUtil;->performSyncSuccessStat(Landroid/content/Context;Ljava/lang/String;JLandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method protected onTransformExtAuthToken(Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V
    .locals 0
    .param p1, "token"    # Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .prologue
    .line 168
    return-void
.end method
