.class public Lcom/miui/internal/log/receiver/DynamicDumpReceiver;
.super Lcom/miui/internal/log/receiver/DumpReceiver;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DynamicDumpReceiver"

.field private static final hp:Ljava/lang/Object;

.field private static volatile hq:Z

.field private static hr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->hp:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/miui/internal/log/receiver/DumpReceiver;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/log/receiver/DumpReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private g(Landroid/content/Context;)Z
    .locals 2

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.core.intent.ACTION_DUMP_CACHED_LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 73
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 38
    sget-boolean v0, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->hr:Z

    if-nez v0, :cond_1

    .line 39
    invoke-direct {p0, p1}, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string p2, "DynamicDumpReceiver"

    const-string v0, "Dynamic receiver removed"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 42
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->hr:Z

    .line 47
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/internal/log/receiver/DumpReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 48
    return-void
.end method

.method public register(Landroid/content/Context;)Z
    .locals 4

    .line 51
    sget-boolean v0, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->hq:Z

    if-nez v0, :cond_1

    .line 52
    sget-object v0, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->hp:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-boolean v1, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->hq:Z

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.miui.core.intent.ACTION_DUMP_CACHED_LOG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "miui.permission.DUMP_CACHED_LOG"

    const/4 v3, 0x0

    invoke-virtual {p1, p0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 59
    const/4 p1, 0x1

    sput-boolean p1, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->hq:Z

    .line 60
    const-string v1, "DynamicDumpReceiver"

    const-string v2, "Dynamic receiver registered"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    monitor-exit v0

    return p1

    .line 63
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 66
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
