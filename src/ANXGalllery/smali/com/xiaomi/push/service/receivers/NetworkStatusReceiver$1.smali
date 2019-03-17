.class Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver$1;
.super Ljava/lang/Object;
.source "NetworkStatusReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver$1;->this$0:Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;

    iput-object p2, p0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver$1;->this$0:Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;

    iget-object v1, p0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->access$000(Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;Landroid/content/Context;)V

    .line 70
    return-void
.end method
