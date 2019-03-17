.class Lcom/xiaomi/push/service/XMPushService$PingJob;
.super Lcom/xiaomi/push/service/XMPushService$Job;
.source "XMPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PingJob"
.end annotation


# instance fields
.field isPong:Z

.field final synthetic this$0:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaomi/push/service/XMPushService;
    .param p2, "isPong"    # Z

    .prologue
    .line 1991
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$PingJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    .line 1992
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$Job;-><init>(I)V

    .line 1993
    iput-boolean p2, p0, Lcom/xiaomi/push/service/XMPushService$PingJob;->isPong:Z

    .line 1994
    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2013
    const-string v0, "send ping.."

    return-object v0
.end method

.method public process()V
    .locals 3

    .prologue
    .line 1998
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$PingJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2000
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/push/service/XMPushService$PingJob;->isPong:Z

    if-nez v1, :cond_0

    .line 2001
    invoke-static {}, Lcom/xiaomi/stats/StatsHelper;->pingStarted()V

    .line 2003
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$PingJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/push/service/XMPushService;->access$500(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/Connection;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaomi/push/service/XMPushService$PingJob;->isPong:Z

    invoke-virtual {v1, v2}, Lcom/xiaomi/smack/Connection;->ping(Z)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2009
    :cond_1
    :goto_0
    return-void

    .line 2004
    :catch_0
    move-exception v0

    .line 2005
    .local v0, "e":Lcom/xiaomi/smack/XMPPException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 2006
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$PingJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->disconnect(ILjava/lang/Exception;)V

    goto :goto_0
.end method
