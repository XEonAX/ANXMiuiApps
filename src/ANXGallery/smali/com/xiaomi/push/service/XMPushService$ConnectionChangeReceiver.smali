.class Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "XMPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 2096
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$ConnectionChangeReceiver;->this$0:Lcom/xiaomi/push/service/XMPushService;

    sget v1, Lcom/xiaomi/push/service/XMPushService;->START_STICKY:I

    invoke-virtual {v0, p2, v1}, Lcom/xiaomi/push/service/XMPushService;->onStart(Landroid/content/Intent;I)V

    .line 2100
    return-void
.end method
