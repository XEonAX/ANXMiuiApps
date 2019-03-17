.class public Lcom/xiaomi/push/mpcd/receivers/BroadcastActionsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastActionsReceiver.java"


# instance fields
.field private mHandler:Lcom/xiaomi/push/mpcd/IntentHandler;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/mpcd/IntentHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/xiaomi/push/mpcd/IntentHandler;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/xiaomi/push/mpcd/receivers/BroadcastActionsReceiver;->mHandler:Lcom/xiaomi/push/mpcd/IntentHandler;

    .line 33
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/xiaomi/push/mpcd/receivers/BroadcastActionsReceiver;->mHandler:Lcom/xiaomi/push/mpcd/IntentHandler;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/xiaomi/push/mpcd/receivers/BroadcastActionsReceiver;->mHandler:Lcom/xiaomi/push/mpcd/IntentHandler;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/push/mpcd/IntentHandler;->handle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 40
    :cond_0
    return-void
.end method
