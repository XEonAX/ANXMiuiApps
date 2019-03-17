.class Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$a;
.super Ljava/lang/Object;
.source "UTMCAppStatusMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;


# direct methods
.method private constructor <init>(Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$a;->b:Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method

.method synthetic constructor <init>(Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$1;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$a;-><init>(Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$a;->b:Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->a(Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;Z)Z

    .line 142
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$a;->b:Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;

    invoke-static {v0}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->a(Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$a;->b:Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;

    invoke-static {v0}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->a(Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;

    .line 144
    invoke-interface {v0}, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;->onSwitchBackground()V

    goto :goto_0

    .line 146
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

    .line 147
    return-void
.end method
