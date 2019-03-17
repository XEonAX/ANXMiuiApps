.class public Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;
.super Ljava/lang/Object;
.source "UTMCAppStatusMonitor.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$a;
    }
.end annotation


# static fields
.field private static a:Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;


# instance fields
.field private J:I

.field private T:Z

.field private a:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->a:Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->J:I

    .line 19
    iput-boolean v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->T:Z

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->a:Ljava/util/concurrent/ScheduledFuture;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->d:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->m:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->e:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method private K()V
    .locals 3

    .prologue
    .line 54
    iget-object v1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/alibaba/mtl/log/d/r;->f(I)V

    .line 56
    monitor-exit v1

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;)Ljava/util/List;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->T:Z

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->a:Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;

    invoke-direct {v0}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;-><init>()V

    sput-object v0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->a:Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;

    .line 34
    :cond_0
    sget-object v0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->a:Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    iget-object v1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;

    .line 63
    invoke-interface {v0, p1, p2}, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;

    .line 72
    invoke-interface {v0, p1}, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;

    .line 81
    invoke-interface {v0, p1}, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 88
    iget-object v1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;

    .line 90
    invoke-interface {v0, p1}, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;

    .line 99
    invoke-interface {v0, p1, p2}, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->K()V

    .line 108
    iget v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->J:I

    .line 110
    iget-boolean v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->T:Z

    if-nez v0, :cond_1

    .line 112
    iget-object v1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;

    .line 114
    invoke-interface {v0}, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;->onSwitchForeground()V

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->T:Z

    .line 119
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 123
    iget v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->J:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->J:I

    .line 124
    iget v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->J:I

    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->K()V

    .line 128
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v0

    const/16 v1, 0xb

    new-instance v2, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$a;-><init>(Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$1;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/alibaba/mtl/log/d/r;->a(ILjava/lang/Runnable;J)V

    .line 130
    :cond_0
    return-void
.end method

.method public registerAppStatusCallbacks(Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;)V
    .locals 2
    .param p1, "aCallbacks"    # Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    monitor-exit v1

    .line 43
    :cond_0
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterAppStatusCallbacks(Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;)V
    .locals 2
    .param p1, "aCallbacks"    # Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v1

    .line 51
    :cond_0
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
