.class public Lcom/xiaomi/micloudsdk/sync/MiCloudExceptionHandler;
.super Ljava/lang/Object;
.source "MiCloudExceptionHandler.java"


# direct methods
.method public static handleException(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/content/SyncResult;Lcom/xiaomi/micloudsdk/exception/CloudServerException;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "syncResult"    # Landroid/content/SyncResult;
    .param p4, "exception"    # Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    .param p5, "authType"    # Ljava/lang/String;
    .param p6, "extTokenStr"    # Ljava/lang/String;
    .param p7, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 34
    const/4 v10, 0x0

    .line 36
    .local v10, "retry":Z
    move-object/from16 v0, p4

    iget v2, v0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    sparse-switch v2, :sswitch_data_0

    .line 103
    invoke-virtual/range {p4 .. p4}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->is5xxServerException()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    const-string v9, "server_5xx_error"

    .line 105
    .local v9, "reason":Ljava/lang/String;
    const/4 v10, 0x1

    .line 106
    invoke-virtual/range {p4 .. p4}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->get5xxServerExceptionRetryTime()J

    move-result-wide v12

    .line 107
    .local v12, "retryTime":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v12, v2

    if-nez v2, :cond_0

    .line 108
    move-object/from16 v0, p2

    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;->getSyncSuspendTime(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    int-to-long v12, v2

    .line 110
    :cond_0
    const-string v2, "MiCloudExceptionHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Http 5xx error. retryTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {p0, v0, v1, v12, v13}, Lcom/xiaomi/micloudsdk/sync/MiCloudExceptionHandler;->handleException(Landroid/content/Context;Ljava/lang/String;Landroid/content/SyncResult;J)V

    .line 118
    .end local v12    # "retryTime":J
    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {p0, v0, v1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncRecordUtils;->recordSyncResult(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/exception/CloudServerException;)V

    .line 119
    move-object/from16 v0, p7

    move-object/from16 v1, p2

    invoke-static {v0, v1, v9, v10}, Lmiui/cloud/stat/MiCloudStatUtil;->wrapErrorBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 120
    return-void

    .line 38
    .end local v9    # "reason":Ljava/lang/String;
    :sswitch_0
    const-string v2, "MiCloudExceptionHandler"

    const-string v3, "Http bad request error. Suspending sync."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string/jumbo v9, "sever_error_bad_request"

    .line 40
    .restart local v9    # "reason":Ljava/lang/String;
    const/4 v10, 0x1

    .line 41
    move-object/from16 v0, p2

    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;->getSyncSuspendTime(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/xiaomi/micloudsdk/sync/MiCloudExceptionHandler;->handleException(Landroid/content/Context;Ljava/lang/String;Landroid/content/SyncResult;J)V

    goto :goto_0

    .line 44
    .end local v9    # "reason":Ljava/lang/String;
    :sswitch_1
    const-string v2, "MiCloudExceptionHandler"

    const-string v3, "Http unauthorized error."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string/jumbo v9, "sever_error_unauthorized"

    .line 46
    .restart local v9    # "reason":Ljava/lang/String;
    const/4 v10, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 47
    invoke-static/range {v2 .. v8}, Lcom/xiaomi/micloudsdk/sync/MiCloudExceptionHandler;->handleUnauthorizedException(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/content/SyncResult;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 50
    .end local v9    # "reason":Ljava/lang/String;
    :sswitch_2
    const-string v2, "MiCloudExceptionHandler"

    const-string v3, "Http forbidden error. Suspend sync."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string/jumbo v9, "sever_error_forbidden"

    .line 52
    .restart local v9    # "reason":Ljava/lang/String;
    const/4 v10, 0x1

    .line 53
    move-object/from16 v0, p2

    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;->getSyncSuspendTime(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/xiaomi/micloudsdk/sync/MiCloudExceptionHandler;->handleException(Landroid/content/Context;Ljava/lang/String;Landroid/content/SyncResult;J)V

    goto :goto_0

    .line 56
    .end local v9    # "reason":Ljava/lang/String;
    :sswitch_3
    const-string v2, "MiCloudExceptionHandler"

    const-string v3, "Http not-acceptable error. Suspend sync."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string/jumbo v9, "sever_error_not-acceptable"

    .line 58
    .restart local v9    # "reason":Ljava/lang/String;
    const/4 v10, 0x1

    .line 59
    move-object/from16 v0, p2

    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;->getSyncSuspendTime(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/xiaomi/micloudsdk/sync/MiCloudExceptionHandler;->handleException(Landroid/content/Context;Ljava/lang/String;Landroid/content/SyncResult;J)V

    goto :goto_0

    .line 62
    .end local v9    # "reason":Ljava/lang/String;
    :sswitch_4
    const-string v2, "MiCloudExceptionHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-server error. code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget v4, v0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    move-object/from16 v0, p4

    iget v2, v0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->code:I

    sparse-switch v2, :sswitch_data_1

    .line 97
    const-string v9, "code_sync_unknown"

    .line 98
    .restart local v9    # "reason":Ljava/lang/String;
    goto/16 :goto_0

    .line 66
    .end local v9    # "reason":Ljava/lang/String;
    :sswitch_5
    const-string v9, "code_sync_success"

    .line 67
    .restart local v9    # "reason":Ljava/lang/String;
    goto/16 :goto_0

    .line 70
    .end local v9    # "reason":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v9, "sync_soft_error"

    .line 71
    .restart local v9    # "reason":Ljava/lang/String;
    const/4 v10, 0x1

    .line 72
    goto/16 :goto_0

    .line 75
    .end local v9    # "reason":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v9, "sync_hard_error"

    .line 76
    .restart local v9    # "reason":Ljava/lang/String;
    const/4 v10, 0x1

    .line 77
    move-object/from16 v0, p2

    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;->getSyncSuspendTime(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/xiaomi/micloudsdk/sync/MiCloudExceptionHandler;->handleException(Landroid/content/Context;Ljava/lang/String;Landroid/content/SyncResult;J)V

    goto/16 :goto_0

    .line 81
    .end local v9    # "reason":Ljava/lang/String;
    :sswitch_8
    const-string v9, "network_disallowed"

    .line 82
    .restart local v9    # "reason":Ljava/lang/String;
    goto/16 :goto_0

    .line 85
    .end local v9    # "reason":Ljava/lang/String;
    :sswitch_9
    const-string v9, "activated_fail"

    .line 86
    .restart local v9    # "reason":Ljava/lang/String;
    goto/16 :goto_0

    .line 88
    .end local v9    # "reason":Ljava/lang/String;
    :sswitch_a
    const-string v9, "auth_token_error"

    .restart local v9    # "reason":Ljava/lang/String;
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 89
    invoke-static/range {v2 .. v8}, Lcom/xiaomi/micloudsdk/sync/MiCloudExceptionHandler;->handleUnauthorizedException(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/content/SyncResult;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 92
    .end local v9    # "reason":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v9, "time_unavailable"

    .line 94
    .restart local v9    # "reason":Ljava/lang/String;
    goto/16 :goto_0

    .line 113
    .end local v9    # "reason":Ljava/lang/String;
    :cond_1
    const-string v2, "MiCloudExceptionHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized server error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget v4, v0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v9, "code_sync_unknown"

    .restart local v9    # "reason":Ljava/lang/String;
    goto/16 :goto_0

    .line 36
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2711 -> :sswitch_4
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x193 -> :sswitch_2
        0x196 -> :sswitch_3
    .end sparse-switch

    .line 63
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_6
        0x2 -> :sswitch_7
        0x64 -> :sswitch_a
        0x65 -> :sswitch_b
        0x3e8 -> :sswitch_8
        0x3e9 -> :sswitch_9
    .end sparse-switch
.end method

.method public static handleException(Landroid/content/Context;Ljava/lang/String;Landroid/content/SyncResult;J)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "syncResult"    # Landroid/content/SyncResult;
    .param p3, "suspendTime"    # J

    .prologue
    .line 123
    invoke-static {p0, p1, p3, p4}, Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;->suspendSync(Landroid/content/Context;Ljava/lang/String;J)V

    .line 124
    invoke-static {p2, p3, p4}, Lcom/xiaomi/micloudsdk/sync/MiCloudExceptionHandler;->setSyncRetry(Landroid/content/SyncResult;J)V

    .line 125
    return-void
.end method

.method private static handleUnauthorizedException(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/content/SyncResult;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "syncResult"    # Landroid/content/SyncResult;
    .param p4, "authType"    # Ljava/lang/String;
    .param p5, "extTokenStr"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 131
    const-string v3, "TokenExpiredDay_%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "prefTokenxpiredDay":Ljava/lang/String;
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/xiaomi/micloudsdk/utils/PrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 133
    .local v6, "tokenExpiredDay":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    div-long v4, v8, v10

    .line 134
    .local v4, "today":J
    cmp-long v3, v6, v4

    if-nez v3, :cond_0

    .line 135
    const-string v3, "MiCloudExceptionHandler"

    const-string v8, "Http unauthorized error. Suspend sync."

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {p0, p2}, Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;->getSyncSuspendTime(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    int-to-long v8, v3

    invoke-static {p0, p2, p3, v8, v9}, Lcom/xiaomi/micloudsdk/sync/MiCloudExceptionHandler;->handleException(Landroid/content/Context;Ljava/lang/String;Landroid/content/SyncResult;J)V

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string v3, "MiCloudExceptionHandler"

    const-string v8, "Http unauthorized error. Invalid and retry"

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/micloudsdk/sync/MiCloudExceptionHandler;->invalidAuthToken(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, p6

    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 141
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/xiaomi/micloudsdk/utils/PrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private static invalidAuthToken(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "extTokenStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 146
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 147
    .local v0, "am":Landroid/accounts/AccountManager;
    const/4 v3, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v6

    .line 148
    .local v6, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private static setSyncRetry(Landroid/content/SyncResult;J)V
    .locals 7
    .param p0, "syncResult"    # Landroid/content/SyncResult;
    .param p1, "delayUntil"    # J

    .prologue
    .line 152
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 153
    iput-wide p1, p0, Landroid/content/SyncResult;->delayUntil:J

    .line 154
    return-void
.end method
