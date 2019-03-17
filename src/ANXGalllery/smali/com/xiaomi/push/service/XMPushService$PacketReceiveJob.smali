.class Lcom/xiaomi/push/service/XMPushService$PacketReceiveJob;
.super Lcom/xiaomi/push/service/XMPushService$Job;
.source "XMPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PacketReceiveJob"
.end annotation


# instance fields
.field private mPacket:Lcom/xiaomi/smack/packet/Packet;

.field final synthetic this$0:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/Packet;)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaomi/push/service/XMPushService;
    .param p2, "packet"    # Lcom/xiaomi/smack/packet/Packet;

    .prologue
    .line 1727
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$PacketReceiveJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    .line 1728
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$Job;-><init>(I)V

    .line 1725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService$PacketReceiveJob;->mPacket:Lcom/xiaomi/smack/packet/Packet;

    .line 1729
    iput-object p2, p0, Lcom/xiaomi/push/service/XMPushService$PacketReceiveJob;->mPacket:Lcom/xiaomi/smack/packet/Packet;

    .line 1730
    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1739
    const-string v0, "receive a message."

    return-object v0
.end method

.method public process()V
    .locals 2

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$PacketReceiveJob;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->access$800(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/PacketSync;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$PacketReceiveJob;->mPacket:Lcom/xiaomi/smack/packet/Packet;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/PacketSync;->onPacketReceive(Lcom/xiaomi/smack/packet/Packet;)V

    .line 1735
    return-void
.end method
