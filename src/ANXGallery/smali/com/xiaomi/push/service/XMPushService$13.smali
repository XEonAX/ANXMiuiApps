.class Lcom/xiaomi/push/service/XMPushService$13;
.super Ljava/lang/Object;
.source "XMPushService.java"

# interfaces
.implements Lcom/xiaomi/smack/filter/PacketFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/XMPushService;->connectBySlim()V
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
    .line 1620
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$13;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/xiaomi/smack/packet/Packet;)Z
    .locals 1
    .param p1, "packet"    # Lcom/xiaomi/smack/packet/Packet;

    .prologue
    .line 1623
    const/4 v0, 0x1

    return v0
.end method
