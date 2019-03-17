.class public abstract Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;
.super Ljava/lang/Object;
.source "MiPushClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mipush/sdk/MiPushClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MiPushClientCallback"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private category:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1060
    return-void
.end method


# virtual methods
.method protected getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->category:Ljava/lang/String;

    return-object v0
.end method

.method public onCommandResult(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "resultCode"    # J
    .param p4, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1131
    .local p5, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onInitializeResult(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "resultCode"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "regID"    # Ljava/lang/String;

    .prologue
    .line 1100
    return-void
.end method

.method public onReceiveMessage(Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/xiaomi/mipush/sdk/MiPushMessage;

    .prologue
    .line 1089
    return-void
.end method

.method public onReceiveMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "topic"    # Ljava/lang/String;
    .param p4, "hasNotified"    # Z

    .prologue
    .line 1081
    return-void
.end method

.method public onSubscribeResult(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "resultCode"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "topic"    # Ljava/lang/String;

    .prologue
    .line 1111
    return-void
.end method

.method public onUnsubscribeResult(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "resultCode"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "topic"    # Ljava/lang/String;

    .prologue
    .line 1122
    return-void
.end method
