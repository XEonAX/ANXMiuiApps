.class Lcom/xiaomi/push/service/XMPushService$4;
.super Ljava/lang/Object;
.source "XMPushService.java"

# interfaces
.implements Lcom/xiaomi/push/service/PushClientsManager$ClientChangeListener;


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
    .line 263
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$4;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 5

    .prologue
    .line 266
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$4;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->access$100(Lcom/xiaomi/push/service/XMPushService;)V

    .line 268
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/PushClientsManager;->getActiveClientCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$4;->this$0:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/service/XMPushService$DisconnectJob;

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService$4;->this$0:Lcom/xiaomi/push/service/XMPushService;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/xiaomi/push/service/XMPushService$DisconnectJob;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V

    .line 272
    :cond_0
    return-void
.end method
