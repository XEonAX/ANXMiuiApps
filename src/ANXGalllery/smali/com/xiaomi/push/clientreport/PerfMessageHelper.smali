.class public Lcom/xiaomi/push/clientreport/PerfMessageHelper;
.super Ljava/lang/Object;
.source "PerfMessageHelper.java"


# direct methods
.method public static collectPerfData(Ljava/lang/String;Landroid/content/Context;II)V
    .locals 8
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packetType"    # I
    .param p3, "packetLength"    # I

    .prologue
    .line 204
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 205
    invoke-static {p1, p3}, Lcom/xiaomi/push/clientreport/PerfMessageHelper;->getTraffic(Landroid/content/Context;I)I

    move-result p3

    .line 209
    sget-object v0, Lcom/xiaomi/xmpush/thrift/NotificationType;->UploadTinyData:Lcom/xiaomi/xmpush/thrift/NotificationType;

    invoke-static {v0}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->changeOrdinalToCode(Ljava/lang/Enum;)I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Perf_code  packetType  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v1

    const-wide/16 v4, 0x1

    int-to-long v6, p3

    move-object v2, p0

    move v3, p2

    .line 213
    invoke-virtual/range {v1 .. v7}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportPerf(Ljava/lang/String;IJJ)V

    .line 216
    :cond_0
    return-void
.end method

.method public static collectPerfData(Ljava/lang/String;Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;I)V
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lorg/apache/thrift/TBase;
    .param p3, "actionType"    # Lcom/xiaomi/xmpush/thrift/ActionType;
    .param p4, "packetLength"    # I

    .prologue
    .line 227
    invoke-static {p2, p3}, Lcom/xiaomi/push/clientreport/PerfMessageHelper;->getMessageType(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)I

    move-result v0

    .line 228
    .local v0, "packetType":I
    invoke-static {p0, p1, v0, p4}, Lcom/xiaomi/push/clientreport/PerfMessageHelper;->collectPerfData(Ljava/lang/String;Landroid/content/Context;II)V

    .line 229
    return-void
.end method

.method public static collectUpStream(Ljava/lang/String;Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;I)V
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .param p3, "length"    # I

    .prologue
    .line 177
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getAction()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v0

    .line 181
    .local v0, "actionType":Lcom/xiaomi/xmpush/thrift/ActionType;
    if-eqz v0, :cond_0

    .line 182
    invoke-static {v0}, Lcom/xiaomi/push/clientreport/PerfMessageHelper;->typeToCode(Lcom/xiaomi/xmpush/thrift/ActionType;)I

    move-result v3

    .line 183
    .local v3, "packetType":I
    const/4 v2, 0x0

    .line 184
    .local v2, "packetLength":I
    if-gtz p3, :cond_3

    .line 185
    invoke-static {p2}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    .line 186
    .local v1, "bytes":[B
    if-eqz v1, :cond_2

    .line 187
    array-length v2, v1

    .line 192
    .end local v1    # "bytes":[B
    :cond_2
    :goto_1
    invoke-static {p0, p1, v3, v2}, Lcom/xiaomi/push/clientreport/PerfMessageHelper;->collectPerfData(Ljava/lang/String;Landroid/content/Context;II)V

    goto :goto_0

    .line 190
    :cond_3
    move v2, p3

    goto :goto_1
.end method

.method public static collectUpStream(Ljava/lang/String;Landroid/content/Context;[B)V
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bytes"    # [B

    .prologue
    .line 158
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 163
    .local v0, "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    :try_start_0
    invoke-static {v0, p2}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 164
    array-length v2, p2

    invoke-static {p0, p1, v0, v2}, Lcom/xiaomi/push/clientreport/PerfMessageHelper;->collectUpStream(Ljava/lang/String;Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;I)V
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Lorg/apache/thrift/TException;
    const-string v2, "fail to convert bytes to container"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMessageType(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)I
    .locals 12
    .param p0, "message"    # Lorg/apache/thrift/TBase;
    .param p1, "actionType"    # Lcom/xiaomi/xmpush/thrift/ActionType;

    .prologue
    const/4 v11, -0x1

    .line 39
    const/4 v7, -0x1

    .line 40
    .local v7, "result":I
    sget-object v9, Lcom/xiaomi/push/clientreport/PerfMessageHelper$1;->$SwitchMap$com$xiaomi$xmpush$thrift$ActionType:[I

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ActionType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 119
    :cond_0
    :goto_0
    return v7

    .line 51
    :pswitch_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ActionType;->getValue()I

    move-result v9

    invoke-static {v9}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->changeValueToCode(I)I

    move-result v7

    .line 52
    goto :goto_0

    .line 55
    :pswitch_1
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ActionType;->getValue()I

    move-result v9

    invoke-static {v9}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->changeValueToCode(I)I

    move-result v7

    .line 57
    if-eqz p0, :cond_0

    .line 58
    :try_start_0
    instance-of v9, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;

    if-eqz v9, :cond_1

    .line 59
    move-object v0, p0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;

    move-object v1, v0

    .line 61
    .local v1, "ackNotification":Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;
    iget-object v8, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;->type:Ljava/lang/String;

    .line 62
    .local v8, "type":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 63
    invoke-static {v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->changeValueToNotificationType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/NotificationType;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->changeOrdinalToCode(Ljava/lang/Enum;)I

    move-result v9

    if-eq v9, v11, :cond_0

    .line 64
    invoke-static {v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->changeValueToNotificationType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/NotificationType;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->changeOrdinalToCode(Ljava/lang/Enum;)I

    move-result v7

    goto :goto_0

    .line 67
    .end local v1    # "ackNotification":Lcom/xiaomi/xmpush/thrift/XmPushActionAckNotification;
    .end local v8    # "type":Ljava/lang/String;
    :cond_1
    instance-of v9, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    if-eqz v9, :cond_0

    .line 68
    move-object v0, p0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    move-object v6, v0

    .line 69
    .local v6, "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    iget-object v8, v6, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->type:Ljava/lang/String;

    .line 70
    .restart local v8    # "type":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 71
    invoke-static {v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->changeValueToNotificationType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/NotificationType;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->changeOrdinalToCode(Ljava/lang/Enum;)I

    move-result v9

    if-eq v9, v11, :cond_2

    .line 72
    invoke-static {v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->changeValueToNotificationType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/NotificationType;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->changeOrdinalToCode(Ljava/lang/Enum;)I

    move-result v7

    .line 77
    :cond_2
    sget-object v9, Lcom/xiaomi/xmpush/thrift/NotificationType;->UploadTinyData:Lcom/xiaomi/xmpush/thrift/NotificationType;

    invoke-static {v8}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->changeValueToNotificationType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/NotificationType;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/xiaomi/xmpush/thrift/NotificationType;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_0

    .line 78
    const/4 v7, -0x1

    goto :goto_0

    .line 83
    .end local v6    # "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .end local v8    # "type":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 84
    .local v5, "e":Ljava/lang/Exception;
    const-string v9, "PERF_ERROR : parse Notification type error"

    invoke-static {v9}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    .end local v5    # "e":Ljava/lang/Exception;
    :pswitch_2
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ActionType;->getValue()I

    move-result v9

    invoke-static {v9}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->changeValueToCode(I)I

    move-result v7

    .line 91
    if-eqz p0, :cond_0

    .line 92
    :try_start_1
    instance-of v9, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;

    if-eqz v9, :cond_3

    .line 93
    move-object v0, p0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;

    move-object v3, v0

    .line 95
    .local v3, "commandResult":Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;->getCmdName()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "commandName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 97
    invoke-static {v2}, Lcom/xiaomi/push/service/xmpush/Command;->getCode(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v11, :cond_0

    .line 98
    invoke-static {v2}, Lcom/xiaomi/push/service/xmpush/Command;->getCode(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    .line 101
    .end local v2    # "commandName":Ljava/lang/String;
    .end local v3    # "commandResult":Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;
    :cond_3
    instance-of v9, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    if-eqz v9, :cond_0

    .line 102
    move-object v0, p0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;

    move-object v3, v0

    .line 104
    .local v3, "commandResult":Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;
    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;->getCmdName()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "configName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 106
    invoke-static {v4}, Lcom/xiaomi/push/service/xmpush/Command;->getCode(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v11, :cond_0

    .line 107
    invoke-static {v4}, Lcom/xiaomi/push/service/xmpush/Command;->getCode(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    goto/16 :goto_0

    .line 112
    .end local v3    # "commandResult":Lcom/xiaomi/xmpush/thrift/XmPushActionCommand;
    .end local v4    # "configName":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 113
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v9, "PERF_ERROR : parse Command type error"

    invoke-static {v9}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getTraffic(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "byteLength"    # I

    .prologue
    const/4 v1, -0x1

    .line 130
    invoke-static {p0}, Lcom/xiaomi/smack/util/TrafficUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 131
    .local v0, "networkType":I
    if-ne v1, v0, :cond_0

    .line 135
    :goto_0
    return v1

    :cond_0
    if-nez v0, :cond_1

    const/16 v1, 0xd

    :goto_1
    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0xa

    goto :goto_0

    :cond_1
    const/16 v1, 0xb

    goto :goto_1
.end method

.method public static typeToCode(Lcom/xiaomi/xmpush/thrift/ActionType;)I
    .locals 1
    .param p0, "actionType"    # Lcom/xiaomi/xmpush/thrift/ActionType;

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ActionType;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->changeValueToCode(I)I

    move-result v0

    return v0
.end method
