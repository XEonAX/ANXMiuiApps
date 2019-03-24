.class public Lcom/miui/internal/vip/VipConstants;
.super Ljava/lang/Object;
.source "VipConstants.java"


# static fields
.field public static final ACCESS_DENIED:I = 0x3eb

.field public static final ACCOUNT_AVATAR_FILE_NAME:Ljava/lang/String; = "acc_avatar_file_name"

.field public static final ACCOUNT_AVATAR_URL:Ljava/lang/String; = "acc_avatar_url"

.field public static final ACCOUNT_PACKAGE:Ljava/lang/String; = "com.xiaomi.account"

.field public static final ACCOUNT_USER_NAME:Ljava/lang/String; = "acc_user_name"

.field public static final ACTION_ACCOUNT_WELCOME:Ljava/lang/String; = "com.xiaomi.account.action.XIAOMI_ACCOUNT_WELCOME"

.field public static final ACTION_EVENT:Ljava/lang/String; = "com.xiaomi.vip.action.VIP_EVENT_NOTIFY"

.field public static final ACTION_USER_DETAIL:Ljava/lang/String; = "com.xiaomi.account.action.USER_INFO_DETAIL"

.field public static final ACTION_VIP_ACHIEVEMENTS:Ljava/lang/String; = "com.xiaomi.vip.action.VIP_ACHIEVEMENT_LIST"

.field public static final ACTION_VIP_AWARD:Ljava/lang/String; = "com.xiaomi.vip.action.VIP_AWARD_LIST"

.field public static final ACTION_VIP_LEVEL_LIST:Ljava/lang/String; = "com.xiaomi.vip.action.VIP_LEVEL_LIST"

.field public static final ACTION_VIP_TASK:Ljava/lang/String; = "com.xiaomi.vip.action.VIP_TASK_LIST"

.field public static final APP_ICON:Ljava/lang/String; = "appicon://"

.field public static final AUTH_FAILURE:I = 0x3ed

.field public static final CIPHER_ERROR:I = 0x3ea

.field public static final DATA_FAILURE:I = 0x3ee

.field public static final DAY:J = 0x5265c00L

.field public static final EVENT_ERR_MSG:Ljava/lang/String; = "VIP_EVENT_MSG"

.field public static final EVENT_RESULT:Ljava/lang/String; = "VIP_EVENT_RESULT"

.field public static final EVENT_STATE:Ljava/lang/String; = "VIP_EVENT_STATE"

.field public static final EVENT_TYPE:Ljava/lang/String; = "VIP_EVENT_TYPE"

.field public static final EVENT_VALUE:Ljava/lang/String; = "VIP_APP_EVENT_VALUE"

.field public static final EXTRA_UPDATE_TYPE:Ljava/lang/String; = "extra_update_type"

.field public static final HOUR:J = 0x36ee80L

.field public static final INVALID_PARAMS:I = 0x2710

.field public static final INVALID_RESPONSE:I = 0x3ec

.field public static final IO_ERROR:I = 0x3e9

.field public static final LEVEL_IMG:Ljava/lang/String; = "https://rs.vip.miui.com/h5/level_icons/icon_level_%d.webp"

.field public static final LOGIN_ACCOUNTS_POST_CHANGED_ACTION:Ljava/lang/String; = "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

.field public static final NOT_SUPPORT:I = 0x4571

.field public static final PACKAGE_NAME:Ljava/lang/String; = "VIP_APP_PACKAGE_NAME"

.field public static final PHONE_LEVEL:Ljava/lang/String; = "VIP_PHON_LEVEL"

.field public static final REQUEST_ID:Ljava/lang/String; = "VIP_REQUEST_ID"

.field public static final RES_ICON:Ljava/lang/String; = "resicon://"

.field public static final RETRY:I = 0x11170

.field public static final SERVER_ERROR:I = 0x13880

.field public static final SUCCESS:I = 0x0

.field public static final TASK_ID:Ljava/lang/String; = "VIP_TASK_ID"

.field public static final TASK_INFO:Ljava/lang/String; = "VIP_TASK_INFO"

.field public static final TYPE_ACHIEVEMENTS:I = 0x10

.field public static final TYPE_ADD:I = 0x2

.field public static final TYPE_BANNERS:I = 0x40

.field public static final TYPE_CONNECTED:I = 0x8

.field public static final TYPE_DISCONNECTED:I = 0x9

.field public static final TYPE_NOTIFY_EVENT:I = 0x2

.field public static final TYPE_PHONE_LEVEL:I = 0x4

.field public static final TYPE_REMOVE:I = 0x1

.field public static final TYPE_USER_INFO:I = 0x1

.field public static final TYPE_VIP_ICON:I = 0x20

.field public static final UNKNOWN:I = 0x15f90

.field public static final USER_ERROR_BEGIN:I = 0x3415

.field public static final USER_ERROR_END:I = 0x3479

.field public static final USER_ERROR_TASK_ALREADY_FINISHED:I = 0x3419

.field public static final USER_ERROR_TASK_ALREADY_STARTED:I = 0x3416

.field public static final USER_ERROR_TASK_NOT_FINISHED:I = 0x3418

.field public static final USER_ERROR_TASK_NOT_STARTED:I = 0x3417

.field public static final USER_INFO:Ljava/lang/String; = "VIP_USER_INFO"

.field public static final VIP_EVENT_ACTION:Ljava/lang/String; = "com.xiaomi.vip.action.VIP_EVENT"

.field public static final VIP_MESSENGER_CLASS:Ljava/lang/String; = "com.xiaomi.vip.service.VipMessengerService"

.field public static final VIP_MESSENGER_SERVICE:Ljava/lang/String; = "android.intent.action.BIND_XIAOMI_VIP_MESSENGER_SERVICE"

.field public static final VIP_PACKAGE:Ljava/lang/String; = "com.xiaomi.vip"

.field public static final VIP_SERVICE:Ljava/lang/String; = "android.intent.action.BIND_XIAOMI_VIP_SDK_SERVICE"

.field public static final VIP_SERVICE_CLASS:Ljava/lang/String; = "com.xiaomi.vip.service.XiaomiVipSdkService"

.field public static final VIP_SERVICE_FAILURE:I = 0x3e8

.field public static final WAIT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUserErrorOfTaskState(I)Z
    .locals 1
    .param p0, "code"    # I

    .line 95
    const/16 v0, 0x3415

    if-le p0, v0, :cond_0

    const/16 v0, 0x3479

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
