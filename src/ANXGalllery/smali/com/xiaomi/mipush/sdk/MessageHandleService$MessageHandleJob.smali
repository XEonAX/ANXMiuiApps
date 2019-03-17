.class public Lcom/xiaomi/mipush/sdk/MessageHandleService$MessageHandleJob;
.super Ljava/lang/Object;
.source "MessageHandleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mipush/sdk/MessageHandleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageHandleJob"
.end annotation


# instance fields
.field private intent:Landroid/content/Intent;

.field private receiver:Lcom/xiaomi/mipush/sdk/PushMessageReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lcom/xiaomi/mipush/sdk/PushMessageReceiver;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiver"    # Lcom/xiaomi/mipush/sdk/PushMessageReceiver;

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/MessageHandleService$MessageHandleJob;->receiver:Lcom/xiaomi/mipush/sdk/PushMessageReceiver;

    .line 198
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MessageHandleService$MessageHandleJob;->intent:Landroid/content/Intent;

    .line 199
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MessageHandleService$MessageHandleJob;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getReceiver()Lcom/xiaomi/mipush/sdk/PushMessageReceiver;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MessageHandleService$MessageHandleJob;->receiver:Lcom/xiaomi/mipush/sdk/PushMessageReceiver;

    return-object v0
.end method
