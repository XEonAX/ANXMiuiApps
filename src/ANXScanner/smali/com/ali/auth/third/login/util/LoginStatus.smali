.class public Lcom/ali/auth/third/login/util/LoginStatus;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "login.LoginStatus"

.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static b:Landroid/content/Context;

.field private static c:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ali/auth/third/login/util/LoginStatus;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/ali/auth/third/login/util/LoginStatus;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static b()V
    .locals 3

    sget-object v0, Lcom/ali/auth/third/login/util/LoginStatus;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/auth/third/login/util/LoginStatus;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "NOTIFY_LOGIN_STATUS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "currentProcess"

    invoke-static {}, Lcom/ali/auth/third/core/util/CommonUtils;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isLogining"

    sget-object v2, Lcom/ali/auth/third/login/util/LoginStatus;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/ali/auth/third/login/util/LoginStatus;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/ali/auth/third/login/util/LoginStatus;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized compareAndSetLogining(ZZ)Z
    .locals 2

    const-class v1, Lcom/ali/auth/third/login/util/LoginStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/auth/third/login/util/LoginStatus;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-static {}, Lcom/ali/auth/third/login/util/LoginStatus;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    sput-object p0, Lcom/ali/auth/third/login/util/LoginStatus;->b:Landroid/content/Context;

    new-instance v0, Lcom/ali/auth/third/login/util/LoginStatus$1;

    invoke-direct {v0}, Lcom/ali/auth/third/login/util/LoginStatus$1;-><init>()V

    sput-object v0, Lcom/ali/auth/third/login/util/LoginStatus;->c:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "NOTIFY_LOGIN_STATUS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ali/auth/third/login/util/LoginStatus;->b:Landroid/content/Context;

    sget-object v2, Lcom/ali/auth/third/login/util/LoginStatus;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static isLogining()Z
    .locals 1

    sget-object v0, Lcom/ali/auth/third/login/util/LoginStatus;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static resetLoginFlag()V
    .locals 3

    const-string v0, "login.LoginStatus"

    const-string v1, "reset login status"

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/trace/SDKLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ali/auth/third/login/util/LoginStatus;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ali/auth/third/login/util/LoginStatus;->b()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/ali/auth/third/core/context/KernelContext;->sOneTimeAuthOption:Lcom/ali/auth/third/core/config/AuthOption;

    return-void
.end method
