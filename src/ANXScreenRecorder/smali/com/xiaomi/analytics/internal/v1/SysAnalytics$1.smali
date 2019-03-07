.class Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;
.super Ljava/lang/Object;
.source "SysAnalytics.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/internal/v1/SysAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 97
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {v1, v6}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$002(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;Z)Z

    .line 98
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {v1, v5}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$202(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;Z)Z

    .line 99
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {p2}, Lcom/miui/analytics/ICore$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/analytics/ICore;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$102(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;Lcom/miui/analytics/ICore;)Lcom/miui/analytics/ICore;

    .line 100
    const-string v1, "SysAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onServiceConnected %s, pid:%d, tid:%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {v4}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$100(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Lcom/miui/analytics/ICore;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$300(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$300(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$400(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)V

    .line 109
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "SysAnalytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "onServiceConnected notifyAll exception:"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    .line 89
    const-string v0, "SysAnalytics"

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected, pid:%d, tid:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {v0, v5}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$002(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;Z)Z

    .line 91
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$102(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;Lcom/miui/analytics/ICore;)Lcom/miui/analytics/ICore;

    .line 92
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$1;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {v0, v5}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$202(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;Z)Z

    .line 93
    return-void
.end method
