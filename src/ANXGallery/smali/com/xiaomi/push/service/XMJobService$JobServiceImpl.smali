.class Lcom/xiaomi/push/service/XMJobService$JobServiceImpl;
.super Landroid/app/job/JobService;
.source "XMJobService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JobServiceImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/XMJobService$JobServiceImpl$JobHandler;
    }
.end annotation


# instance fields
.field binder:Landroid/os/Binder;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/app/Service;)V
    .locals 5
    .param p1, "base"    # Landroid/app/Service;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMJobService$JobServiceImpl;->binder:Landroid/os/Binder;

    .line 69
    const-string v0, "onBind"

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Binder;

    iput-object v0, p0, Lcom/xiaomi/push/service/XMJobService$JobServiceImpl;->binder:Landroid/os/Binder;

    .line 70
    const-string v0, "attachBaseContext"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p0, v0, v1}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v3, 0x1

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaomi.push.timer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMJobService$JobServiceImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMJobService$JobServiceImpl;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 105
    iget-object v1, p0, Lcom/xiaomi/push/service/XMJobService$JobServiceImpl;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Lcom/xiaomi/push/service/XMJobService$JobServiceImpl$JobHandler;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/XMJobService$JobServiceImpl$JobHandler;-><init>(Landroid/app/job/JobService;)V

    iput-object v1, p0, Lcom/xiaomi/push/service/XMJobService$JobServiceImpl;->mHandler:Landroid/os/Handler;

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/push/service/XMJobService$JobServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaomi/push/service/XMJobService$JobServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return v3
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Job stop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    return v0
.end method
