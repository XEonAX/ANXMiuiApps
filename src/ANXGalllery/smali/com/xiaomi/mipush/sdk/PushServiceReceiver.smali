.class public Lcom/xiaomi/mipush/sdk/PushServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushServiceReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 12
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/mipush/sdk/PushMessageHandler;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-static {p1, v0}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->addJob(Landroid/content/Context;Landroid/content/Intent;)V

    .line 16
    return-void
.end method
