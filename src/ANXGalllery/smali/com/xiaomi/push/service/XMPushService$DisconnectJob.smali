.class public Lcom/xiaomi/push/service/XMPushService$DisconnectJob;
.super Lcom/xiaomi/push/service/XMPushService$Job;
.source "XMPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisconnectJob"
.end annotation


# instance fields
.field public e:Ljava/lang/Exception;

.field public reason:I

.field final synthetic this$0:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaomi/push/service/XMPushService;
    .param p2, "reason"    # I
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1949
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$DisconnectJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    .line 1950
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$Job;-><init>(I)V

    .line 1951
    iput p2, p0, Lcom/xiaomi/push/service/XMPushService$DisconnectJob;->reason:I

    .line 1952
    iput-object p3, p0, Lcom/xiaomi/push/service/XMPushService$DisconnectJob;->e:Ljava/lang/Exception;

    .line 1953
    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1961
    const-string v0, "disconnect the connection."

    return-object v0
.end method

.method public process()V
    .locals 3

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$DisconnectJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    iget v1, p0, Lcom/xiaomi/push/service/XMPushService$DisconnectJob;->reason:I

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService$DisconnectJob;->e:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->disconnect(ILjava/lang/Exception;)V

    .line 1957
    return-void
.end method
