.class Lcom/xiaomi/scanner/app/ScanActivity$10;
.super Landroid/content/BroadcastReceiver;
.source "ScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/app/ScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/app/ScanActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 1533
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity$10;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1536
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1537
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1540
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity$10;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->access$800(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1541
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity$10;->this$0:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->access$800(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/scanner/module/ModuleController;->onConnectivityChanged()V

    .line 1544
    :cond_0
    return-void
.end method
