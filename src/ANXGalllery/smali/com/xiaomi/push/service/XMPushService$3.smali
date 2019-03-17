.class Lcom/xiaomi/push/service/XMPushService$3;
.super Lcom/xiaomi/smack/ConnectionConfiguration;
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
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/HttpRequestProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/service/XMPushService;
    .param p3, "port"    # I
    .param p4, "serviceName"    # Ljava/lang/String;
    .param p5, "httpProxy"    # Lcom/xiaomi/smack/HttpRequestProxy;

    .prologue
    .line 227
    .local p2, "hosts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$3;->this$0:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/xiaomi/smack/ConnectionConfiguration;-><init>(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/HttpRequestProxy;)V

    return-void
.end method


# virtual methods
.method public getConnectionBlob()[B
    .locals 4

    .prologue
    .line 231
    :try_start_0
    new-instance v1, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    invoke-direct {v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;-><init>()V

    .line 232
    .local v1, "msg":Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;
    invoke-static {}, Lcom/xiaomi/push/service/ServiceConfig;->getInstance()Lcom/xiaomi/push/service/ServiceConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/push/service/ServiceConfig;->getConfigVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->setClientVersion(I)Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    .line 233
    invoke-virtual {v1}, Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 237
    .end local v1    # "msg":Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;
    :goto_0
    return-object v2

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOBBString err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 237
    const/4 v2, 0x0

    goto :goto_0
.end method
