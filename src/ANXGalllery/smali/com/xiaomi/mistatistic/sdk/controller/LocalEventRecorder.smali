.class public Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;
.super Ljava/lang/Object;
.source "LocalEventRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/xiaomi/xmsf/push/service/b;

.field private static volatile b:Z

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/Object;

.field private static e:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a:Lcom/xiaomi/xmsf/push/service/b;

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b:Z

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->c:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->d:Ljava/lang/Object;

    .line 130
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$4;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$4;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a()Lcom/xiaomi/xmsf/push/service/b;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a:Lcom/xiaomi/xmsf/push/service/b;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/xmsf/push/service/b;)Lcom/xiaomi/xmsf/push/service/b;
    .locals 0

    .prologue
    .line 28
    sput-object p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a:Lcom/xiaomi/xmsf/push/service/b;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V
    .locals 0

    .prologue
    .line 28
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 28
    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b:Z

    return p0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 104
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b:Z

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    const-string v1, "com.xiaomi.xmsf"

    const-string v2, "com.xiaomi.xmsf.push.service.StatService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->e:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b:Z

    .line 108
    const-string v0, "LER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind StatSystemService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void
.end method

.method private static b(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V
    .locals 3

    .prologue
    .line 74
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b(Landroid/content/Context;)V

    .line 76
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a:Lcom/xiaomi/xmsf/push/service/b;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/r;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$2;-><init>(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 90
    const-string v0, "LER"

    const-string v1, "StatSystemService is not null, insert a event"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v0, "LER"

    const-string v1, "StatSystemService is null, insert event into eventList"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string v1, "LER"

    const-string v2, "insertEventUseSystemService exception: "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b:Z

    return v0
.end method

.method static synthetic c()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->e:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 113
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$3;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$3;-><init>(Landroid/content/Context;)V

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;J)V

    .line 128
    return-void
.end method

.method static synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e()Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->c:Ljava/util/List;

    return-object v0
.end method

.method public static insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V
    .locals 3

    .prologue
    .line 39
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    const-string v0, "LER"

    const-string v1, "mistats is not initialized properly."

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v1, "c"

    invoke-static {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    .line 45
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isCTABuild()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    const-string v0, "LER"

    const-string v1, "disable local event upload for CTA build"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string v1, "LER"

    const-string v2, "insertEvent exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 50
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->isUseSystemStatService()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    const-string v0, "LER"

    const-string v1, "insert event use SystemStatService."

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$1;-><init>(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;)V

    goto :goto_0

    .line 61
    :cond_2
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;->getAnonymous()I

    move-result v0

    if-nez v0, :cond_3

    .line 62
    const-string v0, "LER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disabled local event upload, event category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_3
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;-><init>(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;)V

    .line 66
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a()Lcom/xiaomi/mistatistic/sdk/controller/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/s;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
