.class Lcom/xiaomi/push/service/XMJobService$JobServiceImpl$JobHandler;
.super Landroid/os/Handler;
.source "XMJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMJobService$JobServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JobHandler"
.end annotation


# instance fields
.field service:Landroid/app/job/JobService;


# direct methods
.method constructor <init>(Landroid/app/job/JobService;)V
    .locals 1
    .param p1, "service"    # Landroid/app/job/JobService;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/app/job/JobService;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    iput-object p1, p0, Lcom/xiaomi/push/service/XMJobService$JobServiceImpl$JobHandler;->service:Landroid/app/job/JobService;

    .line 79
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 83
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/job/JobParameters;

    .line 86
    .local v0, "jobParams":Landroid/app/job/JobParameters;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job finished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/xiaomi/push/service/XMJobService$JobServiceImpl$JobHandler;->service:Landroid/app/job/JobService;

    invoke-virtual {v1, v0, v3}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 88
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 89
    invoke-static {v3}, Lcom/xiaomi/push/service/timers/Alarm;->registerPing(Z)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
