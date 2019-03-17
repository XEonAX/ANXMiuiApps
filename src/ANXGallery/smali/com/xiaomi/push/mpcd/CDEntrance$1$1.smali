.class Lcom/xiaomi/push/mpcd/CDEntrance$1$1;
.super Ljava/lang/Object;
.source "CDEntrance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/mpcd/CDEntrance$1;->handle(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/mpcd/CDEntrance$1;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/mpcd/CDEntrance$1;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/mpcd/CDEntrance$1;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/xiaomi/push/mpcd/CDEntrance$1$1;->this$0:Lcom/xiaomi/push/mpcd/CDEntrance$1;

    iput-object p2, p0, Lcom/xiaomi/push/mpcd/CDEntrance$1$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/push/mpcd/CDEntrance$1$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/xiaomi/push/mpcd/CDEntrance$1$1;->this$0:Lcom/xiaomi/push/mpcd/CDEntrance$1;

    iget-object v1, p0, Lcom/xiaomi/push/mpcd/CDEntrance$1$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/push/mpcd/CDEntrance$1$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/mpcd/CDEntrance$1;->access$000(Lcom/xiaomi/push/mpcd/CDEntrance$1;Landroid/content/Context;Landroid/content/Intent;)V

    .line 50
    return-void
.end method
