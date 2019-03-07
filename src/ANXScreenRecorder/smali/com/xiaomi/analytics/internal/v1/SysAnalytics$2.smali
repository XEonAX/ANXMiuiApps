.class Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;
.super Ljava/lang/Object;
.source "SysAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->drainPendingEvents()V
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
    .line 113
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 116
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$500(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$500(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$500(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 120
    .local v1, "list":[Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$500(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "list":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 121
    .restart local v1    # "list":[Ljava/lang/String;
    const-string v2, "com.miui.analytics.ICore"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "trackEvents"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    .line 122
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    .line 123
    invoke-static {v4}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$100(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Lcom/miui/analytics/ICore;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v2, "SysAnalytics"

    const-string v4, "onServiceConnected drain %d pending events"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {v7}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$500(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaomi/analytics/internal/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/v1/SysAnalytics$2;->this$0:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->access$500(Lcom/xiaomi/analytics/internal/v1/SysAnalytics;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .end local v1    # "list":[Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 131
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SysAnalytics"

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "onServiceConnected drain pending events exception:"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
