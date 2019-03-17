.class public abstract Lcom/xiaomi/mipush/sdk/BaseService;
.super Landroid/app/Service;
.source "BaseService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/BaseService$TimeoutHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/xiaomi/mipush/sdk/BaseService$TimeoutHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract hasJob()Z
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 29
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/BaseService;->mHandler:Lcom/xiaomi/mipush/sdk/BaseService$TimeoutHandler;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/xiaomi/mipush/sdk/BaseService$TimeoutHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/xiaomi/mipush/sdk/BaseService$TimeoutHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/BaseService;->mHandler:Lcom/xiaomi/mipush/sdk/BaseService$TimeoutHandler;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/BaseService;->mHandler:Lcom/xiaomi/mipush/sdk/BaseService$TimeoutHandler;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/BaseService$TimeoutHandler;->reSendTimeoutMessage()V

    .line 33
    return-void
.end method
