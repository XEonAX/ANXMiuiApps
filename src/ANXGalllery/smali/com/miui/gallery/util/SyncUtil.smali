.class public Lcom/miui/gallery/util/SyncUtil;
.super Ljava/lang/Object;
.source "SyncUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/SyncUtil$Request;
    }
.end annotation


# direct methods
.method static synthetic access$000(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/miui/gallery/util/SyncUtil$Request;

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/miui/gallery/util/SyncUtil;->doRequestSync(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V

    return-void
.end method

.method private static doRequestSync(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/miui/gallery/util/SyncUtil$Request;

    .prologue
    const/4 v9, 0x0

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 96
    invoke-static {p0}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 153
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {p0}, Lcom/miui/gallery/util/SyncUtil;->isSyncPause(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    const-string v5, "SyncUtil"

    const-string/jumbo v6, "sync has pause"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/util/SyncUtil$Request;->getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/miui/gallery/util/SyncUtil;->wrapSyncType(Landroid/content/Context;Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v4

    .line 105
    .local v4, "syncType":Lcom/miui/gallery/cloud/syncstate/SyncType;
    new-instance v5, Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    invoke-direct {v5}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;-><init>()V

    invoke-virtual {v5, p1}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->cloneFrom(Lcom/miui/gallery/util/SyncUtil$Request;)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->build()Lcom/miui/gallery/util/SyncUtil$Request;

    move-result-object p1

    .line 106
    const-string v5, "SyncUtil"

    const-string v6, "requestSync: request[%s] %s"

    const-string v7, "\n\t"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, p1, v7}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    invoke-static {p0}, Lcom/miui/gallery/cloud/SyncConditionManager;->checkCloudSpace(Landroid/content/Context;)I

    move-result v1

    .line 109
    .local v1, "checkResult":I
    invoke-virtual {v4}, Lcom/miui/gallery/cloud/syncstate/SyncType;->isForce()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 110
    const-string v5, "SyncUtil"

    const-string/jumbo v6, "sync pre check cloud space not ok"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-static {p0}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 116
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_3

    .line 117
    const-string v5, "SyncUtil"

    const-string v6, "account is null"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/SyncLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_3
    const-string v5, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v5}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 121
    invoke-virtual {p1}, Lcom/miui/gallery/util/SyncUtil$Request;->getSyncReason()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 122
    const-string v5, "SyncUtil"

    const-string/jumbo v6, "sync active, no need request"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v5

    invoke-virtual {v5, v4, v9}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;Z)V

    goto :goto_0

    .line 126
    :cond_4
    const-string v5, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v5}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 127
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v2

    .line 128
    .local v2, "oldType":Lcom/miui/gallery/cloud/syncstate/SyncType;
    invoke-static {v2, v4}, Lcom/miui/gallery/cloud/syncstate/SyncType;->compare(Lcom/miui/gallery/cloud/syncstate/SyncType;Lcom/miui/gallery/cloud/syncstate/SyncType;)I

    move-result v5

    if-ltz v5, :cond_6

    .line 129
    invoke-virtual {p1}, Lcom/miui/gallery/util/SyncUtil$Request;->getSyncReason()I

    move-result v5

    invoke-static {v5}, Lcom/miui/gallery/util/SyncUtil;->transformPriority(I)I

    move-result v5

    invoke-static {v5, v2}, Lcom/miui/gallery/cloud/SyncConditionManager;->checkIgnoreCancel(ILcom/miui/gallery/cloud/syncstate/SyncType;)I

    move-result v5

    if-eqz v5, :cond_5

    .line 131
    const-string v5, "SyncUtil"

    const-string/jumbo v6, "sync pending, and sync type not less than current, no need request"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    :cond_5
    move-object v4, v2

    .line 136
    const-string v5, "SyncUtil"

    const-string/jumbo v6, "sync pending, and sync type not less than current, but condition ok, request"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_6
    const-string v5, "SyncUtil"

    const-string/jumbo v6, "sync pending, and sync type less than current, cancel old"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v5, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v5}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 145
    .end local v2    # "oldType":Lcom/miui/gallery/cloud/syncstate/SyncType;
    :cond_7
    invoke-static {p0, p1}, Lcom/miui/gallery/util/SyncUtil;->packSyncParams(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)Landroid/content/SyncRequest;

    move-result-object v3

    .line 146
    .local v3, "syncRequest":Landroid/content/SyncRequest;
    if-eqz v3, :cond_8

    .line 147
    invoke-static {v3}, Landroid/content/ContentResolver;->requestSync(Landroid/content/SyncRequest;)V

    .line 148
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v5

    invoke-virtual {v5, v4, v9}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;Z)V

    .line 149
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.miui.gallery.SYNC_COMMAND_DISPATCHED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 151
    :cond_8
    const-string v5, "SyncUtil"

    const-string/jumbo v6, "sync request null"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static existXiaomiAccount(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 42
    if-nez p0, :cond_1

    .line 43
    const-string v2, "SyncUtil"

    const-string v3, "existXiaomiAccount context null"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    :goto_0
    return v1

    .line 46
    :cond_1
    invoke-static {p0}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 47
    .local v0, "xiaomiAccount":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getResumeTime(Landroid/content/Context;)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 263
    if-nez p0, :cond_0

    .line 264
    const-string v0, "SyncUtil"

    const-string v1, "getResumeTime context null"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-wide/16 v0, -0x1

    .line 267
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->getResumeTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static isGalleryCloudSyncable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 51
    if-nez p0, :cond_1

    .line 52
    const-string v2, "SyncUtil"

    const-string v3, "isGalleryCloudSyncable context null"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    invoke-static {p0}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 56
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.miui.gallery.cloud.provider"

    .line 60
    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isMetaDataRequest(I)Z
    .locals 1
    .param p0, "syncReason"    # I

    .prologue
    .line 344
    if-eqz p0, :cond_0

    .line 345
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSyncPause(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 157
    if-nez p0, :cond_0

    .line 158
    const-string v2, "SyncUtil"

    const-string v3, "isSyncPause context null"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return v1

    .line 161
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 162
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 163
    const-string v2, "SyncUtil"

    const-string v3, "isSyncPause account null"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_1
    const-string v1, "com.miui.gallery.cloud.provider"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->isSyncPausing(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static packSyncParams(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)Landroid/content/SyncRequest;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/miui/gallery/util/SyncUtil$Request;

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 288
    if-nez p0, :cond_0

    .line 289
    const-string v8, "SyncUtil"

    const-string v9, "packSyncParams context null"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v10

    .line 340
    :goto_0
    return-object v8

    .line 292
    :cond_0
    invoke-static {p0}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v7

    .line 293
    .local v7, "xiaomiAccount":Landroid/accounts/Account;
    if-nez v7, :cond_1

    move-object v8, v10

    .line 294
    goto :goto_0

    .line 296
    :cond_1
    new-instance v11, Landroid/content/SyncRequest$Builder;

    invoke-direct {v11}, Landroid/content/SyncRequest$Builder;-><init>()V

    const-string v12, "com.miui.gallery.cloud.provider"

    .line 297
    invoke-virtual {v11, v7, v12}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    move-result-object v11

    .line 298
    invoke-virtual {v11}, Landroid/content/SyncRequest$Builder;->syncOnce()Landroid/content/SyncRequest$Builder;

    move-result-object v0

    .line 299
    .local v0, "builder":Landroid/content/SyncRequest$Builder;
    invoke-static {}, Lcom/miui/gallery/cloud/policy/SyncPolicyManager;->getInstance()Lcom/miui/gallery/cloud/policy/SyncPolicyManager;

    move-result-object v11

    invoke-virtual {p1}, Lcom/miui/gallery/util/SyncUtil$Request;->getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/miui/gallery/cloud/policy/SyncPolicyManager;->getPolicy(Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/cloud/policy/IPolicy;

    move-result-object v5

    .line 300
    .local v5, "policy":Lcom/miui/gallery/cloud/policy/IPolicy;
    if-eqz v5, :cond_2

    invoke-interface {v5}, Lcom/miui/gallery/cloud/policy/IPolicy;->isEnable()Z

    move-result v11

    if-nez v11, :cond_3

    :cond_2
    move-object v8, v10

    .line 301
    goto :goto_0

    .line 306
    :cond_3
    invoke-virtual {p1}, Lcom/miui/gallery/util/SyncUtil$Request;->getSyncReason()I

    move-result v10

    invoke-static {v10}, Lcom/miui/gallery/util/SyncUtil;->isMetaDataRequest(I)Z

    move-result v4

    .line 307
    .local v4, "isMetaDataRequest":Z
    if-eqz v4, :cond_a

    move v1, v8

    .line 308
    .local v1, "disallowMetered":Z
    :goto_1
    if-eqz v4, :cond_b

    move v6, v8

    .line 309
    .local v6, "requireCharging":Z
    :goto_2
    invoke-interface {v5}, Lcom/miui/gallery/cloud/policy/IPolicy;->isManual()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {p1}, Lcom/miui/gallery/util/SyncUtil$Request;->isManual()Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_4
    move v3, v9

    .line 312
    .local v3, "isManual":Z
    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/SyncRequest$Builder;->setDisallowMetered(Z)Landroid/content/SyncRequest$Builder;

    move-result-object v10

    .line 313
    invoke-interface {v5}, Lcom/miui/gallery/cloud/policy/IPolicy;->isExpedited()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/SyncRequest$Builder;->setExpedited(Z)Landroid/content/SyncRequest$Builder;

    move-result-object v10

    .line 314
    invoke-virtual {v10, v3}, Landroid/content/SyncRequest$Builder;->setManual(Z)Landroid/content/SyncRequest$Builder;

    .line 315
    if-eqz v6, :cond_5

    .line 323
    invoke-interface {v5}, Lcom/miui/gallery/cloud/policy/IPolicy;->isRequireCharging()Z

    move-result v10

    invoke-static {v0, v10}, Lmiui/gallery/support/SyncCompat;->setRequiresCharging(Landroid/content/SyncRequest$Builder;Z)V

    .line 327
    :cond_5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 328
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v10, "sync_no_delay"

    invoke-virtual {p1}, Lcom/miui/gallery/util/SyncUtil$Request;->isDelayUpload()Z

    move-result v11

    if-nez v11, :cond_6

    move v8, v9

    :cond_6
    invoke-virtual {v2, v10, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 329
    const-string/jumbo v8, "sync_type"

    invoke-virtual {p1}, Lcom/miui/gallery/util/SyncUtil$Request;->getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/miui/gallery/cloud/syncstate/SyncType;->getIdentifier()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    if-nez v1, :cond_7

    .line 331
    const-string v8, "micloud_ignore_wifi_settings"

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 333
    :cond_7
    invoke-interface {v5}, Lcom/miui/gallery/cloud/policy/IPolicy;->isIgnoreBatteryLow()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 334
    const-string v8, "micloud_ignore_battery_low"

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 336
    :cond_8
    invoke-interface {v5}, Lcom/miui/gallery/cloud/policy/IPolicy;->isManual()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 337
    const-string v8, "micloud_force"

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 339
    :cond_9
    invoke-virtual {v0, v2}, Landroid/content/SyncRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;

    .line 340
    invoke-virtual {v0}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    move-result-object v8

    goto/16 :goto_0

    .line 307
    .end local v1    # "disallowMetered":Z
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "isManual":Z
    .end local v6    # "requireCharging":Z
    :cond_a
    invoke-interface {v5}, Lcom/miui/gallery/cloud/policy/IPolicy;->isDisallowMetered()Z

    move-result v1

    goto :goto_1

    .line 308
    .restart local v1    # "disallowMetered":Z
    :cond_b
    invoke-interface {v5}, Lcom/miui/gallery/cloud/policy/IPolicy;->isRequireCharging()Z

    move-result v6

    goto :goto_2

    .restart local v6    # "requireCharging":Z
    :cond_c
    move v3, v8

    .line 309
    goto :goto_3
.end method

.method public static pauseSync(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "interval"    # J

    .prologue
    .line 170
    if-nez p0, :cond_0

    .line 171
    const-string v1, "SyncUtil"

    const-string v2, "pauseSync context null"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 175
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 176
    const-string v1, "SyncUtil"

    const-string v2, "pauseSync account null"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.miui.gallery.cloud.provider"

    invoke-static {v1, v0, v2, p1, p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->pauseSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;J)V

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/SyncUtil;->stopSync(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static requestSync(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    new-instance v1, Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    invoke-direct {v1}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;-><init>()V

    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncType;->NORMAL:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 65
    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncReason(I)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->build()Lcom/miui/gallery/util/SyncUtil$Request;

    move-result-object v0

    .line 68
    .local v0, "request":Lcom/miui/gallery/util/SyncUtil$Request;
    invoke-static {p0, v0}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V

    .line 69
    return-void
.end method

.method public static requestSync(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/miui/gallery/util/SyncUtil$Request;

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    const-string v0, "SyncUtil"

    const-string v1, "requestSync context null"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 77
    invoke-static {p0, p1}, Lcom/miui/gallery/util/SyncUtil;->requestSyncInWorkThread(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V

    goto :goto_0

    .line 79
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/gallery/util/SyncUtil;->doRequestSync(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V

    goto :goto_0
.end method

.method private static requestSyncInWorkThread(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/miui/gallery/util/SyncUtil$Request;

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 85
    .local v0, "application":Landroid/content/Context;
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/util/SyncUtil$1;

    invoke-direct {v2, v0, p1}, Lcom/miui/gallery/util/SyncUtil$1;-><init>(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 92
    return-void
.end method

.method public static resumeSync(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    if-nez p0, :cond_0

    .line 185
    const-string v1, "SyncUtil"

    const-string v2, "resumeSync context null"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 189
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 190
    const-string v1, "SyncUtil"

    const-string v2, "pauseSync account null"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.miui.gallery.cloud.provider"

    invoke-static {v1, v0, v2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->resumeSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 194
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.gallery.SYNC_COMMAND_DISPATCHED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static setBackupOnlyWifi(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backupOnlyWifi"    # Z

    .prologue
    const/4 v5, 0x1

    .line 237
    if-nez p0, :cond_1

    .line 238
    const-string v3, "SyncUtil"

    const-string/jumbo v4, "setBackupOnlyWifi context null"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setBackupOnlyInWifi(Z)V

    .line 242
    if-nez p1, :cond_0

    .line 243
    invoke-static {p0}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 245
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 246
    const-string v3, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.miui.gallery.cloud.provider"

    .line 247
    invoke-static {v0, v3}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getSyncType()Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/miui/gallery/util/SyncUtil;->wrapSyncType(Landroid/content/Context;Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v2

    .line 249
    .local v2, "type":Lcom/miui/gallery/cloud/syncstate/SyncType;
    invoke-static {v5}, Lcom/miui/gallery/util/SyncUtil;->transformPriority(I)I

    move-result v3

    invoke-static {v3, v2}, Lcom/miui/gallery/cloud/SyncConditionManager;->checkIgnoreCancel(ILcom/miui/gallery/cloud/syncstate/SyncType;)I

    move-result v3

    if-nez v3, :cond_0

    .line 250
    const-string v3, "SyncUtil"

    const-string v4, "not back only wifi, sync pending, but condition ok, request"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance v3, Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    invoke-direct {v3}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;-><init>()V

    .line 252
    invoke-virtual {v3, v2}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v3

    .line 253
    invoke-virtual {v3, v5}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncReason(I)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v3

    .line 254
    invoke-virtual {v3}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->build()Lcom/miui/gallery/util/SyncUtil$Request;

    move-result-object v1

    .line 255
    .local v1, "request":Lcom/miui/gallery/util/SyncUtil$Request;
    invoke-static {p0, v1}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V

    goto :goto_0
.end method

.method public static setSyncAutomatically(Landroid/content/Context;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sync"    # Z

    .prologue
    const/4 v1, 0x0

    .line 209
    if-nez p0, :cond_1

    .line 210
    const-string v2, "SyncUtil"

    const-string/jumbo v3, "switchBackup context null"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    :goto_0
    return v1

    .line 213
    :cond_1
    invoke-static {p0}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 214
    .local v0, "account":Landroid/accounts/Account;
    if-eqz p1, :cond_3

    .line 215
    invoke-static {p0}, Lcom/miui/gallery/util/PrivacyAgreementUtils;->isCloudServiceAgreementEnable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 216
    invoke-static {p0}, Lcom/miui/gallery/util/IntentUtil;->startCloudMainPage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    :cond_2
    if-nez v0, :cond_4

    .line 221
    sget-object v2, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;->AUTOBACKUP:Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    invoke-static {p0, v2}, Lcom/miui/gallery/util/IntentUtil;->guideToLoginXiaomiAccount(Landroid/content/Context;Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;)V

    goto :goto_0

    .line 225
    :cond_3
    invoke-static {p0}, Lcom/miui/gallery/util/SyncUtil;->stopSync(Landroid/content/Context;)V

    .line 231
    :cond_4
    invoke-static {p1}, Lcom/miui/gallery/util/SyncUtil;->statSyncEnabledEvent(Z)V

    .line 232
    const-string v1, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v1, p1}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 233
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static statSyncEnabledEvent(Z)V
    .locals 3
    .param p0, "enabled"    # Z

    .prologue
    .line 365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 366
    .local v0, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "state"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v1, "micloud_sync"

    const-string/jumbo v2, "sync_enabled"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 372
    return-void
.end method

.method public static stopSync(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 198
    if-nez p0, :cond_0

    .line 199
    const-string v0, "SyncUtil"

    const-string/jumbo v1, "stopSync context null"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-static {v2}, Lcom/miui/gallery/cloud/SyncConditionManager;->setCancelledForAllBackground(Z)V

    .line 203
    invoke-static {v2, v2}, Lcom/miui/gallery/cloud/UpDownloadManager;->cancelAllBackgroundPriority(ZZ)V

    .line 204
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->getInstance()Lcom/miui/gallery/cloud/syncstate/SyncStateManager;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncType;->UNKNOW:Lcom/miui/gallery/cloud/syncstate/SyncType;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/cloud/syncstate/SyncStateManager;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;Z)V

    .line 205
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.gallery.SYNC_COMMAND_DISPATCHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private static transformPriority(I)I
    .locals 1
    .param p0, "syncReason"    # I

    .prologue
    .line 271
    packed-switch p0, :pswitch_data_0

    .line 276
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 274
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static unpackSyncParams(Landroid/os/Bundle;)Lcom/miui/gallery/cloud/syncstate/SyncType;
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 349
    if-eqz p0, :cond_2

    .line 350
    const-string/jumbo v0, "sync_type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    const-string/jumbo v0, "sync_type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/cloud/syncstate/SyncType;->fromIdentifier(Ljava/lang/String;)Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v0

    .line 360
    :goto_0
    return-object v0

    .line 353
    :cond_0
    const-string v0, "micloud_ignore_wifi_settings"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->GPRS_FORCE:Lcom/miui/gallery/cloud/syncstate/SyncType;

    goto :goto_0

    .line 356
    :cond_1
    const-string v0, "micloud_ignore_battery_low"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->POWER_FORCE:Lcom/miui/gallery/cloud/syncstate/SyncType;

    goto :goto_0

    .line 360
    :cond_2
    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->NORMAL:Lcom/miui/gallery/cloud/syncstate/SyncType;

    goto :goto_0
.end method

.method private static wrapSyncType(Landroid/content/Context;Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/cloud/syncstate/SyncType;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncType"    # Lcom/miui/gallery/cloud/syncstate/SyncType;

    .prologue
    .line 281
    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->NORMAL:Lcom/miui/gallery/cloud/syncstate/SyncType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->UNKNOW:Lcom/miui/gallery/cloud/syncstate/SyncType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->BACKGROUND:Lcom/miui/gallery/cloud/syncstate/SyncType;

    if-ne p1, v0, :cond_1

    .line 282
    :cond_0
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isAppProcessInForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->NORMAL:Lcom/miui/gallery/cloud/syncstate/SyncType;

    :goto_0
    move-object p1, v0

    .line 284
    .end local p1    # "syncType":Lcom/miui/gallery/cloud/syncstate/SyncType;
    :cond_1
    return-object p1

    .line 282
    .restart local p1    # "syncType":Lcom/miui/gallery/cloud/syncstate/SyncType;
    :cond_2
    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->BACKGROUND:Lcom/miui/gallery/cloud/syncstate/SyncType;

    goto :goto_0
.end method
