.class public Lcom/xiaomi/push/service/ServiceClient;
.super Ljava/lang/Object;
.source "ServiceClient.java"


# static fields
.field private static sInstance:Lcom/xiaomi/push/service/ServiceClient;

.field private static sSession:Ljava/lang/String;


# instance fields
.field private isConnectingService:Z

.field private mClientMessenger:Landroid/os/Messenger;

.field private mContext:Landroid/content/Context;

.field private mIsMiuiPushServiceEnabled:Z

.field private mMessenger:Landroid/os/Messenger;

.field private pendingMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/push/service/ServiceClient;->sSession:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/xiaomi/push/service/ServiceClient;->mIsMiuiPushServiceEnabled:Z

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/ServiceClient;->pendingMessages:Ljava/util/List;

    .line 437
    iput-boolean v1, p0, Lcom/xiaomi/push/service/ServiceClient;->isConnectingService:Z

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/ServiceClient;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/xiaomi/push/service/ServiceClient$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/push/service/ServiceClient$1;-><init>(Lcom/xiaomi/push/service/ServiceClient;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/ServiceClient;->mMessenger:Landroid/os/Messenger;

    .line 75
    invoke-direct {p0}, Lcom/xiaomi/push/service/ServiceClient;->serviceInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string/jumbo v0, "use miui push service"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/service/ServiceClient;->mIsMiuiPushServiceEnabled:Z

    .line 79
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/push/service/ServiceClient;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/ServiceClient;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/push/service/ServiceClient;->mClientMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$002(Lcom/xiaomi/push/service/ServiceClient;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/service/ServiceClient;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/xiaomi/push/service/ServiceClient;->mClientMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xiaomi/push/service/ServiceClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/service/ServiceClient;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/xiaomi/push/service/ServiceClient;->isConnectingService:Z

    return p1
.end method

.method static synthetic access$200(Lcom/xiaomi/push/service/ServiceClient;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/ServiceClient;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/push/service/ServiceClient;->pendingMessages:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized bindServiceSafely(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 442
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/xiaomi/push/service/ServiceClient;->isConnectingService:Z

    if-eqz v2, :cond_1

    .line 443
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/ServiceClient;->parseToMessage(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v1

    .line 444
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/xiaomi/push/service/ServiceClient;->pendingMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_0

    .line 445
    iget-object v2, p0, Lcom/xiaomi/push/service/ServiceClient;->pendingMessages:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 447
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/push/service/ServiceClient;->pendingMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    :goto_0
    monitor-exit p0

    return-void

    .line 451
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/push/service/ServiceClient;->mClientMessenger:Landroid/os/Messenger;

    if-nez v2, :cond_2

    .line 452
    iget-object v2, p0, Lcom/xiaomi/push/service/ServiceClient;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/xiaomi/push/service/ServiceClient$2;

    invoke-direct {v3, p0}, Lcom/xiaomi/push/service/ServiceClient$2;-><init>(Lcom/xiaomi/push/service/ServiceClient;)V

    iget-object v4, p0, Lcom/xiaomi/push/service/ServiceClient;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 476
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaomi/push/service/ServiceClient;->isConnectingService:Z

    .line 479
    iget-object v2, p0, Lcom/xiaomi/push/service/ServiceClient;->pendingMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 480
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/ServiceClient;->parseToMessage(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v1

    .line 481
    .restart local v1    # "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/xiaomi/push/service/ServiceClient;->pendingMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 442
    .end local v1    # "message":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 483
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/ServiceClient;->parseToMessage(Landroid/content/Intent;)Landroid/os/Message;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 485
    .restart local v1    # "message":Landroid/os/Message;
    :try_start_3
    iget-object v2, p0, Lcom/xiaomi/push/service/ServiceClient;->mClientMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/xiaomi/push/service/ServiceClient;->mClientMessenger:Landroid/os/Messenger;

    .line 488
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xiaomi/push/service/ServiceClient;->isConnectingService:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/ServiceClient;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    sget-object v0, Lcom/xiaomi/push/service/ServiceClient;->sInstance:Lcom/xiaomi/push/service/ServiceClient;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/xiaomi/push/service/ServiceClient;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/ServiceClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/ServiceClient;->sInstance:Lcom/xiaomi/push/service/ServiceClient;

    .line 59
    :cond_0
    sget-object v0, Lcom/xiaomi/push/service/ServiceClient;->sInstance:Lcom/xiaomi/push/service/ServiceClient;

    return-object v0
.end method

.method private parseToMessage(Landroid/content/Intent;)Landroid/os/Message;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 494
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 495
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    .line 496
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 497
    return-object v0
.end method

.method private serviceInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 337
    sget-boolean v4, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->IsTestBuild:Z

    if-eqz v4, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v3

    .line 341
    :cond_1
    iget-object v4, p0, Lcom/xiaomi/push/service/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 343
    .local v1, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.xiaomi.xmsf"

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 345
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 348
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x68

    if-lt v4, v5, :cond_0

    .line 354
    const/4 v3, 0x1

    goto :goto_0

    .line 351
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public startServiceSafely(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 424
    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isMIUI()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 425
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/ServiceClient;->bindServiceSafely(Landroid/content/Intent;)V

    .line 429
    :goto_0
    const/4 v1, 0x1

    .line 432
    :goto_1
    return v1

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/push/service/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 432
    const/4 v1, 0x0

    goto :goto_1
.end method
