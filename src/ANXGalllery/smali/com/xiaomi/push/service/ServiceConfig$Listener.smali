.class public abstract Lcom/xiaomi/push/service/ServiceConfig$Listener;
.super Ljava/lang/Object;
.source "ServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/ServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChange(Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;)V
    .locals 0
    .param p1, "cfg"    # Lcom/xiaomi/push/protobuf/ChannelConfig$PushServiceConfig;

    .prologue
    .line 33
    return-void
.end method

.method public onConfigMsgReceive(Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;)V
    .locals 0
    .param p1, "config"    # Lcom/xiaomi/push/protobuf/ChannelMessage$PushServiceConfigMsg;

    .prologue
    .line 30
    return-void
.end method
