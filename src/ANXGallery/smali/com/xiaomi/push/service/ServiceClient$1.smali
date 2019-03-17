.class Lcom/xiaomi/push/service/ServiceClient$1;
.super Landroid/os/Handler;
.source "ServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/ServiceClient;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/service/ServiceClient;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/ServiceClient;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/service/ServiceClient;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/xiaomi/push/service/ServiceClient$1;->this$0:Lcom/xiaomi/push/service/ServiceClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 73
    return-void
.end method
