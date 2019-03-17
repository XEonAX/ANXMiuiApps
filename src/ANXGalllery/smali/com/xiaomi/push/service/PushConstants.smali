.class public abstract Lcom/xiaomi/push/service/PushConstants;
.super Ljava/lang/Object;
.source "PushConstants.java"


# static fields
.field public static ACTION_BATCH_SEND_MESSAGE:Ljava/lang/String;

.field public static ACTION_CHANGE_HOST:Ljava/lang/String;

.field public static ACTION_CLOSE_CHANNEL:Ljava/lang/String;

.field public static ACTION_FORCE_RECONNECT:Ljava/lang/String;

.field public static ACTION_OPEN_CHANNEL:Ljava/lang/String;

.field public static ACTION_PING_TIMER:Ljava/lang/String;

.field public static ACTION_RESET_CONNECTION:Ljava/lang/String;

.field public static ACTION_SEND_IQ:Ljava/lang/String;

.field public static ACTION_SEND_MESSAGE:Ljava/lang/String;

.field public static ACTION_SEND_PRESENCE:Ljava/lang/String;

.field public static ACTION_SEND_STATS:Ljava/lang/String;

.field public static ACTION_UPDATE_CHANNEL_INFO:Ljava/lang/String;

.field public static EXTRA_AUTH_METHOD:Ljava/lang/String;

.field public static EXTRA_CHANNEL_ID:Ljava/lang/String;

.field public static EXTRA_CLIENT_ATTR:Ljava/lang/String;

.field public static EXTRA_CLOUD_ATTR:Ljava/lang/String;

.field public static EXTRA_KICK:Ljava/lang/String;

.field public static EXTRA_MESSENGER:Ljava/lang/String;

.field public static EXTRA_NOTIFY_DESCRIPTION:Ljava/lang/String;

.field public static EXTRA_NOTIFY_ID:Ljava/lang/String;

.field public static EXTRA_NOTIFY_TITLE:Ljava/lang/String;

.field public static EXTRA_NOTIFY_TYPE:Ljava/lang/String;

.field public static EXTRA_PACKAGE_NAME:Ljava/lang/String;

.field public static EXTRA_SECURITY:Ljava/lang/String;

.field public static EXTRA_SESSION:Ljava/lang/String;

.field public static EXTRA_SID:Ljava/lang/String;

.field public static EXTRA_SIG:Ljava/lang/String;

.field public static EXTRA_TOKEN:Ljava/lang/String;

.field public static EXTRA_USER_ID:Ljava/lang/String;

.field public static EXTRA_USER_RES:Ljava/lang/String;

.field public static NOTIFICATION_CLICK_DEFAULT:Ljava/lang/String;

.field public static NOTIFICATION_CLICK_INTENT:Ljava/lang/String;

.field public static NOTIFICATION_CLICK_WEB_PAGE:Ljava/lang/String;

.field public static PUSH_DESCRIPTION:Ljava/lang/String;

.field public static PUSH_NOTIFY_ID:Ljava/lang/String;

.field public static PUSH_TITLE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "1"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->NOTIFICATION_CLICK_DEFAULT:Ljava/lang/String;

    .line 56
    const-string v0, "2"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->NOTIFICATION_CLICK_INTENT:Ljava/lang/String;

    .line 58
    const-string v0, "3"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->NOTIFICATION_CLICK_WEB_PAGE:Ljava/lang/String;

    .line 125
    const-string v0, "com.xiaomi.push.OPEN_CHANNEL"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->ACTION_OPEN_CHANNEL:Ljava/lang/String;

    .line 126
    const-string v0, "com.xiaomi.push.SEND_MESSAGE"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->ACTION_SEND_MESSAGE:Ljava/lang/String;

    .line 127
    const-string v0, "com.xiaomi.push.SEND_IQ"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->ACTION_SEND_IQ:Ljava/lang/String;

    .line 128
    const-string v0, "com.xiaomi.push.BATCH_SEND_MESSAGE"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->ACTION_BATCH_SEND_MESSAGE:Ljava/lang/String;

    .line 129
    const-string v0, "com.xiaomi.push.SEND_PRES"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->ACTION_SEND_PRESENCE:Ljava/lang/String;

    .line 130
    const-string v0, "com.xiaomi.push.CLOSE_CHANNEL"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->ACTION_CLOSE_CHANNEL:Ljava/lang/String;

    .line 131
    const-string v0, "com.xiaomi.push.FORCE_RECONN"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->ACTION_FORCE_RECONNECT:Ljava/lang/String;

    .line 132
    const-string v0, "com.xiaomi.push.RESET_CONN"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->ACTION_RESET_CONNECTION:Ljava/lang/String;

    .line 133
    const-string v0, "com.xiaomi.push.UPDATE_CHANNEL_INFO"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->ACTION_UPDATE_CHANNEL_INFO:Ljava/lang/String;

    .line 134
    const-string v0, "com.xiaomi.push.SEND_STATS"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->ACTION_SEND_STATS:Ljava/lang/String;

    .line 246
    const-string v0, "com.xiaomi.push.CHANGE_HOST"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->ACTION_CHANGE_HOST:Ljava/lang/String;

    .line 248
    const-string v0, "com.xiaomi.push.PING_TIMER"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->ACTION_PING_TIMER:Ljava/lang/String;

    .line 251
    const-string v0, "ext_user_id"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    .line 252
    const-string v0, "ext_user_res"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->EXTRA_USER_RES:Ljava/lang/String;

    .line 253
    const-string v0, "ext_chid"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    .line 254
    const-string v0, "ext_sid"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SID:Ljava/lang/String;

    .line 255
    const-string v0, "ext_token"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->EXTRA_TOKEN:Ljava/lang/String;

    .line 256
    const-string v0, "ext_auth_method"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->EXTRA_AUTH_METHOD:Ljava/lang/String;

    .line 257
    const-string v0, "ext_security"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SECURITY:Ljava/lang/String;

    .line 258
    const-string v0, "ext_kick"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->EXTRA_KICK:Ljava/lang/String;

    .line 259
    const-string v0, "ext_client_attr"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    .line 260
    const-string v0, "ext_cloud_attr"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    .line 261
    const-string v0, "ext_pkg_name"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    .line 262
    const-string v0, "ext_notify_id"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->EXTRA_NOTIFY_ID:Ljava/lang/String;

    .line 263
    const-string v0, "ext_notify_type"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->EXTRA_NOTIFY_TYPE:Ljava/lang/String;

    .line 264
    const-string v0, "ext_session"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SESSION:Ljava/lang/String;

    .line 265
    const-string/jumbo v0, "sig"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->EXTRA_SIG:Ljava/lang/String;

    .line 266
    const-string v0, "ext_notify_title"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->EXTRA_NOTIFY_TITLE:Ljava/lang/String;

    .line 267
    const-string v0, "ext_notify_description"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->EXTRA_NOTIFY_DESCRIPTION:Ljava/lang/String;

    .line 268
    const-string v0, "ext_messenger"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->EXTRA_MESSENGER:Ljava/lang/String;

    .line 269
    const-string/jumbo v0, "title"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->PUSH_TITLE:Ljava/lang/String;

    .line 270
    const-string v0, "description"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->PUSH_DESCRIPTION:Ljava/lang/String;

    .line 271
    const-string v0, "notifyId"

    sput-object v0, Lcom/xiaomi/push/service/PushConstants;->PUSH_NOTIFY_ID:Ljava/lang/String;

    return-void
.end method

.method public static getErrorDesc(I)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 409
    packed-switch p0, :pswitch_data_0

    .line 476
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 411
    :pswitch_0
    const-string v0, "ERROR_OK"

    goto :goto_0

    .line 414
    :pswitch_1
    const-string v0, "ERROR_SERVICE_NOT_INSTALLED"

    goto :goto_0

    .line 417
    :pswitch_2
    const-string v0, "ERROR_NETWORK_NOT_AVAILABLE"

    goto :goto_0

    .line 420
    :pswitch_3
    const-string v0, "ERROR_NETWORK_FAILED"

    goto :goto_0

    .line 423
    :pswitch_4
    const-string v0, "ERROR_ACCESS_DENIED"

    goto :goto_0

    .line 426
    :pswitch_5
    const-string v0, "ERROR_AUTH_FAILED"

    goto :goto_0

    .line 429
    :pswitch_6
    const-string v0, "ERROR_MULTI_LOGIN"

    goto :goto_0

    .line 432
    :pswitch_7
    const-string v0, "ERROR_SERVER_ERROR"

    goto :goto_0

    .line 435
    :pswitch_8
    const-string v0, "ERROR_RECEIVE_TIMEOUT"

    goto :goto_0

    .line 438
    :pswitch_9
    const-string v0, "ERROR_READ_ERROR"

    goto :goto_0

    .line 441
    :pswitch_a
    const-string v0, "ERROR_SEND_ERROR"

    goto :goto_0

    .line 444
    :pswitch_b
    const-string v0, "ERROR_RESET"

    goto :goto_0

    .line 447
    :pswitch_c
    const-string v0, "ERROR_NO_CLIENT"

    goto :goto_0

    .line 450
    :pswitch_d
    const-string v0, "ERROR_SERVER_STREAM"

    goto :goto_0

    .line 453
    :pswitch_e
    const-string v0, "ERROR_THREAD_BLOCK"

    goto :goto_0

    .line 456
    :pswitch_f
    const-string v0, "ERROR_SERVICE_DESTROY"

    goto :goto_0

    .line 459
    :pswitch_10
    const-string v0, "ERROR_SESSION_CHANGED"

    goto :goto_0

    .line 462
    :pswitch_11
    const-string v0, "ERROR_READ_TIMEOUT"

    goto :goto_0

    .line 465
    :pswitch_12
    const-string v0, "ERROR_CONNECTIING_TIMEOUT"

    goto :goto_0

    .line 467
    :pswitch_13
    const-string v0, "ERROR_USER_BLOCKED"

    goto :goto_0

    .line 469
    :pswitch_14
    const-string v0, "ERROR_REDIRECT"

    goto :goto_0

    .line 471
    :pswitch_15
    const-string v0, "ERROR_BIND_TIMEOUT"

    goto :goto_0

    .line 473
    :pswitch_16
    const-string v0, "ERROR_PING_TIMEOUT"

    goto :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
