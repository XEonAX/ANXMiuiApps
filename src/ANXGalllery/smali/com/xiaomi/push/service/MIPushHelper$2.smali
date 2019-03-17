.class final Lcom/xiaomi/push/service/MIPushHelper$2;
.super Ljava/lang/Object;
.source "MIPushHelper.java"

# interfaces
.implements Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo$ClientStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/MIPushHelper;->prepareClientLoginInfo(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$service:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/xiaomi/push/service/MIPushHelper$2;->val$service:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;I)V
    .locals 3
    .param p1, "oldStatus"    # Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;
    .param p2, "newStatus"    # Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;
    .param p3, "reason"    # I

    .prologue
    .line 166
    sget-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->binded:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne p2, v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/xiaomi/push/service/MIPushHelper$2;->val$service:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/MIPushClientManager;->processPendingRegistrationRequest(Lcom/xiaomi/push/service/XMPushService;)V

    .line 168
    iget-object v0, p0, Lcom/xiaomi/push/service/MIPushHelper$2;->val$service:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/MIPushClientManager;->processPendingMessages(Lcom/xiaomi/push/service/XMPushService;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->unbind:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne p2, v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/xiaomi/push/service/MIPushHelper$2;->val$service:Lcom/xiaomi/push/service/XMPushService;

    const v1, 0x42c1d81

    const-string v2, " the push is not connected."

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/MIPushClientManager;->notifyRegisterError(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method
