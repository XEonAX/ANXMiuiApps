.class Lcom/xiaomi/push/service/XMPushService$11;
.super Lcom/xiaomi/push/service/XMPushService$Job;
.source "XMPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/XMPushService;->sendMessage(Ljava/lang/String;[BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$payload:[B


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/String;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/service/XMPushService;
    .param p2, "type"    # I

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$11;->this$0:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/XMPushService$11;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/push/service/XMPushService$11;->val$payload:[B

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$Job;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1228
    const-string v0, "send mi push message"

    return-object v0
.end method

.method public process()V
    .locals 4

    .prologue
    .line 1219
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$11;->this$0:Lcom/xiaomi/push/service/XMPushService;

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService$11;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/push/service/XMPushService$11;->val$payload:[B

    invoke-static {v1, v2, v3}, Lcom/xiaomi/push/service/MIPushHelper;->sendPacket(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1224
    :goto_0
    return-void

    .line 1220
    :catch_0
    move-exception v0

    .line 1221
    .local v0, "e":Lcom/xiaomi/smack/XMPPException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 1222
    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$11;->this$0:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->disconnect(ILjava/lang/Exception;)V

    goto :goto_0
.end method
