.class public Lcom/xiaomi/mipush/sdk/BaseService$TimeoutHandler;
.super Landroid/os/Handler;
.source "BaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mipush/sdk/BaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeoutHandler"
.end annotation


# instance fields
.field private mWRService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/xiaomi/mipush/sdk/BaseService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/xiaomi/mipush/sdk/BaseService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "wrService":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/xiaomi/mipush/sdk/BaseService;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/BaseService$TimeoutHandler;->mWRService:Ljava/lang/ref/WeakReference;

    .line 44
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 48
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/BaseService$TimeoutHandler;->mWRService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/BaseService$TimeoutHandler;->mWRService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/BaseService;

    .line 52
    .local v0, "service":Lcom/xiaomi/mipush/sdk/BaseService;
    if-eqz v0, :cond_0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeoutHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  kill self"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/BaseService;->hasJob()Z

    move-result v1

    if-nez v1, :cond_1

    .line 55
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/BaseService;->stopSelf()V

    goto :goto_0

    .line 57
    :cond_1
    const-string v1, "TimeoutHandler has job"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 58
    const/16 v1, 0x3e9

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/xiaomi/mipush/sdk/BaseService$TimeoutHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public reSendTimeoutMessage()V
    .locals 3

    .prologue
    const/16 v2, 0x3e9

    .line 67
    invoke-virtual {p0, v2}, Lcom/xiaomi/mipush/sdk/BaseService$TimeoutHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, v2}, Lcom/xiaomi/mipush/sdk/BaseService$TimeoutHandler;->removeMessages(I)V

    .line 70
    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaomi/mipush/sdk/BaseService$TimeoutHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 71
    return-void
.end method
