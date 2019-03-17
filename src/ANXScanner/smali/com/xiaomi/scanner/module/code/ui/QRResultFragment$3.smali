.class Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$3;
.super Ljava/lang/Object;
.source "QRResultFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->connectMiracast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

.field final synthetic val$p2pMac:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$3;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    iput-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$3;->val$p2pMac:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    const/16 v0, 0xa

    iput v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$3;->count:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 325
    new-instance v0, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;

    invoke-direct {v0}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;-><init>()V

    .line 326
    .local v0, "wifiDisplay":Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$3;->val$p2pMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->checkAndConnectDisplay(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    invoke-static {}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$200()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    const-string v2, "check true"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$3;->val$p2pMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/code/utils/WifiDisplayAdmin;->connectWifiDisplay(Ljava/lang/String;)Z

    .line 335
    :goto_0
    return-void

    .line 329
    :cond_0
    iget v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$3;->count:I

    if-lez v1, :cond_1

    .line 330
    iget v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$3;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$3;->count:I

    .line 331
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$3;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$500(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$3;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    const/16 v2, 0x1002

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$600(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;I)V

    goto :goto_0
.end method
