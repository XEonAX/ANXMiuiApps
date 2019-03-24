.class public Lmiui/vip/VipService;
.super Ljava/lang/Object;
.source "VipService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/vip/VipService$HOLDER;
    }
.end annotation


# static fields
.field public static final ACCESS_DENIED:I = 0x3eb

.field public static final ACTION_VIP_ACHIEVEMENTS:Ljava/lang/String; = "com.xiaomi.vip.action.VIP_ACHIEVEMENT_LIST"

.field public static final ACTION_VIP_AWARD:Ljava/lang/String; = "com.xiaomi.vip.action.VIP_AWARD_LIST"

.field public static final ACTION_VIP_LEVEL_LIST:Ljava/lang/String; = "com.xiaomi.vip.action.VIP_LEVEL_LIST"

.field public static final ACTION_VIP_TASK:Ljava/lang/String; = "com.xiaomi.vip.action.VIP_TASK_LIST"

.field public static final AUTH_FAILURE:I = 0x3ed

.field public static final CIPHER_ERROR:I = 0x3ea

.field public static final DATA_FAILURE:I = 0x3ee

.field public static final EVENT_ERR_MSG:Ljava/lang/String; = "VIP_EVENT_MSG"

.field public static final EVENT_RESULT:Ljava/lang/String; = "VIP_EVENT_RESULT"

.field public static final EVENT_STATE:Ljava/lang/String; = "VIP_EVENT_STATE"

.field public static final EVENT_TYPE:Ljava/lang/String; = "VIP_EVENT_TYPE"

.field public static final INVALID_PARAMS:I = 0x2710

.field public static final INVALID_RESPONSE:I = 0x3ec

.field public static final IO_ERROR:I = 0x3e9

.field public static final NOT_SUPPORT:I = 0x4571

.field public static final REQUEST_ID:Ljava/lang/String; = "VIP_REQUEST_ID"

.field public static final REQ_VIP_ICON:Ljava/lang/String; = "request_vip_icon://"

.field public static final RETRY:I = 0x11170

.field public static final SERVER_ERROR:I = 0x13880

.field public static final SUCCESS:I = 0x0

.field public static final TYPE_ACHIEVEMENTS:I = 0x10

.field public static final TYPE_BANNERS:I = 0x40

.field public static final TYPE_CONNECTED:I = 0x8

.field public static final TYPE_DISCONNECTED:I = 0x9

.field public static final TYPE_PHONE_LEVEL:I = 0x4

.field public static final TYPE_USER_INFO:I = 0x1

.field public static final TYPE_VIP_ICON:I = 0x20

.field public static final UNKNOWN:I = 0x15f90

.field public static final USER_ERROR_BEGIN:I = 0x3415

.field public static final USER_ERROR_END:I = 0x3479

.field public static final USER_ERROR_TASK_ALREADY_FINISHED:I = 0x3419

.field public static final USER_ERROR_TASK_ALREADY_STARTED:I = 0x3416

.field public static final USER_ERROR_TASK_NOT_FINISHED:I = 0x3418

.field public static final USER_ERROR_TASK_NOT_STARTED:I = 0x3417

.field public static final VIP_EVENT_ACTION:Ljava/lang/String; = "com.xiaomi.vip.action.VIP_EVENT"

.field public static final VIP_LEVEL_ICON:Ljava/lang/String; = "level_icon"

.field public static final VIP_SERVICE_FAILURE:I = 0x3e8

.field static final sThread:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final mService:Lcom/miui/internal/vip/VipServiceClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lmiui/vip/VipService;->sThread:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/miui/internal/vip/VipServiceClient;

    invoke-direct {v0, p1}, Lcom/miui/internal/vip/VipServiceClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/vip/VipService;->mService:Lcom/miui/internal/vip/VipServiceClient;

    .line 123
    return-void
.end method

.method public static instance()Lmiui/vip/VipService;
    .locals 1

    .line 116
    sget-object v0, Lmiui/vip/VipService$HOLDER;->service:Lmiui/vip/VipService;

    return-object v0
.end method

.method public static notifyEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.vip.action.VIP_EVENT_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaomi.vip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v1, "VIP_APP_PACKAGE_NAME"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v1, "VIP_APP_EVENT_VALUE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v1, "VipService.notifyEvent, packageName = %s, content = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method public static startVipActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .line 131
    const-string v0, "com.xiaomi.vip"

    invoke-static {p0, p1, v0}, Lcom/miui/internal/vip/utils/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method


# virtual methods
.method public connect(Lmiui/vip/QueryCallback;)V
    .locals 2
    .param p1, "listener"    # Lmiui/vip/QueryCallback;

    .line 141
    sget-object v0, Lmiui/vip/VipService;->sThread:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lmiui/vip/VipService$1;

    invoke-direct {v1, p0, p1}, Lmiui/vip/VipService$1;-><init>(Lmiui/vip/VipService;Lmiui/vip/QueryCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public disconnect(Lmiui/vip/QueryCallback;)V
    .locals 1
    .param p1, "listener"    # Lmiui/vip/QueryCallback;

    .line 155
    iget-object v0, p0, Lmiui/vip/VipService;->mService:Lcom/miui/internal/vip/VipServiceClient;

    invoke-virtual {v0, p1}, Lcom/miui/internal/vip/VipServiceClient;->disconnect(Lmiui/vip/QueryCallback;)V

    .line 156
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lmiui/vip/VipService;->mService:Lcom/miui/internal/vip/VipServiceClient;

    invoke-virtual {v0}, Lcom/miui/internal/vip/VipServiceClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public queryAchievements()V
    .locals 2

    .line 185
    sget-object v0, Lmiui/vip/VipService;->sThread:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lmiui/vip/VipService$3;

    invoke-direct {v1, p0}, Lmiui/vip/VipService$3;-><init>(Lmiui/vip/VipService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method

.method public queryBanners()V
    .locals 2

    .line 200
    sget-object v0, Lmiui/vip/VipService;->sThread:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lmiui/vip/VipService$4;

    invoke-direct {v1, p0}, Lmiui/vip/VipService$4;-><init>(Lmiui/vip/VipService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method public queryPhoneLevel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    .local p1, "phoneNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public queryUserVipInfo()V
    .locals 2

    .line 171
    sget-object v0, Lmiui/vip/VipService;->sThread:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lmiui/vip/VipService$2;

    invoke-direct {v1, p0}, Lmiui/vip/VipService$2;-><init>(Lmiui/vip/VipService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method public sendMessage(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    return-void
.end method

.method sendStatistic(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 224
    sget-object v0, Lmiui/vip/VipService;->sThread:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lmiui/vip/VipService$5;

    invoke-direct {v1, p0, p1}, Lmiui/vip/VipService$5;-><init>(Lmiui/vip/VipService;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method
