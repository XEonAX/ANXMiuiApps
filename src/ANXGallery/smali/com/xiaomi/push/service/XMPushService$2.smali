.class Lcom/xiaomi/push/service/XMPushService$2;
.super Landroid/os/Handler;
.source "XMPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/XMPushService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$2;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 197
    if-eqz p1, :cond_0

    .line 199
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 201
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 202
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 203
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/xiaomi/push/service/XMPushService$2;->this$0:Lcom/xiaomi/push/service/XMPushService;

    sget v4, Lcom/xiaomi/push/service/XMPushService;->START_STICKY:I

    invoke-virtual {v3, v1, v4}, Lcom/xiaomi/push/service/XMPushService;->onStart(Landroid/content/Intent;I)V

    goto :goto_0

    .line 217
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 208
    :pswitch_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 209
    .local v2, "message":Landroid/os/Message;
    const/16 v3, 0x12

    iput v3, v2, Landroid/os/Message;->what:I

    .line 210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 211
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "xmsf_region"

    iget-object v4, p0, Lcom/xiaomi/push/service/XMPushService$2;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v4}, Lcom/xiaomi/push/service/XMPushService;->access$000(Lcom/xiaomi/push/service/XMPushService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 213
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
