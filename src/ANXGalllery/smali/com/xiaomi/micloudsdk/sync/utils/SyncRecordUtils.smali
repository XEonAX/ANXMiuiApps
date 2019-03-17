.class public Lcom/xiaomi/micloudsdk/sync/utils/SyncRecordUtils;
.super Ljava/lang/Object;
.source "SyncRecordUtils.java"


# direct methods
.method public static recordSyncResult(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/exception/CloudServerException;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "exception"    # Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .prologue
    .line 26
    const-string v1, "SyncRecordUtils"

    const-string v2, "recordSyncResult"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget v1, p2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    const/16 v2, -0x2711

    if-eq v1, v2, :cond_0

    .line 28
    iget v1, p2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    invoke-static {p0, p1, v1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->recordSyncResult(Landroid/content/Context;Ljava/lang/String;I)V

    .line 71
    :goto_0
    return-void

    .line 31
    :cond_0
    iget v1, p2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->code:I

    sparse-switch v1, :sswitch_data_0

    .line 67
    sget-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->UNKNOWN:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    .line 69
    .local v0, "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    :goto_1
    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->recordSyncResult(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;)V

    goto :goto_0

    .line 33
    .end local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    :sswitch_0
    sget-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->SUCCESS:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    .line 34
    .restart local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    goto :goto_1

    .line 36
    .end local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    :sswitch_1
    sget-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->SYNC_SOFT_ERROR:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    .line 37
    .restart local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    goto :goto_1

    .line 39
    .end local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    :sswitch_2
    sget-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->SYNC_HARD_ERROR:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    .line 40
    .restart local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    goto :goto_1

    .line 42
    .end local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    :sswitch_3
    sget-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->AUTH_TOKEN_ERROR:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    .line 43
    .restart local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    goto :goto_1

    .line 45
    .end local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    :sswitch_4
    sget-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->TIME_UNAVAILABLE:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    .line 46
    .restart local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    goto :goto_1

    .line 48
    .end local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    :sswitch_5
    sget-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->NETWORK_DISALLOWED:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    .line 49
    .restart local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    goto :goto_1

    .line 51
    .end local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    :sswitch_6
    sget-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->ACTIVATED_FAIL:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    .line 52
    .restart local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    goto :goto_1

    .line 54
    .end local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    :sswitch_7
    sget-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->PERMISSION_LIMIT:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    .line 55
    .restart local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    goto :goto_1

    .line 57
    .end local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    :sswitch_8
    sget-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->SECURE_SPACE_LIMIT:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    .line 58
    .restart local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    goto :goto_1

    .line 60
    .end local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    :sswitch_9
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/provider/GdprUtils;->isGdprAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    sget-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->PRIVACY_ERROR:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    .restart local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    goto :goto_1

    .line 63
    .end local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    :cond_1
    sget-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->UNKNOWN:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    .line 65
    .restart local v0    # "reason":Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;
    goto :goto_1

    .line 31
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_4
        0x3e8 -> :sswitch_5
        0x3e9 -> :sswitch_6
        0x3ea -> :sswitch_7
        0x3eb -> :sswitch_8
        0xcb23 -> :sswitch_9
    .end sparse-switch
.end method

.method public static recordSyncResultSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 21
    const-string v0, "SyncRecordUtils"

    const-string v1, "recordSyncResultSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget-object v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;->SUCCESS:Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;

    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->recordSyncResult(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils$Reason;)V

    .line 23
    return-void
.end method
