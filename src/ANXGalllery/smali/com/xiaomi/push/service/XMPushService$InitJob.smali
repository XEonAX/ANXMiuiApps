.class Lcom/xiaomi/push/service/XMPushService$InitJob;
.super Lcom/xiaomi/push/service/XMPushService$Job;
.source "XMPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitJob"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 1644
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$InitJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    .line 1645
    const v0, 0xffff

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$Job;-><init>(I)V

    .line 1646
    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1655
    const-string v0, "Init Job"

    return-object v0
.end method

.method public process()V
    .locals 1

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$InitJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->access$600(Lcom/xiaomi/push/service/XMPushService;)V

    .line 1651
    return-void
.end method
