.class public abstract Lcom/xiaomi/push/service/XMPushService$Job;
.super Lcom/xiaomi/push/service/JobScheduler$Job;
.source "XMPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Job"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1707
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/JobScheduler$Job;-><init>(I)V

    .line 1708
    return-void
.end method


# virtual methods
.method public abstract getDesc()Ljava/lang/String;
.end method

.method public abstract process()V
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1712
    iget v0, p0, Lcom/xiaomi/push/service/XMPushService$Job;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/push/service/XMPushService$Job;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JOB: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService$Job;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 1715
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService$Job;->process()V

    .line 1716
    return-void
.end method
