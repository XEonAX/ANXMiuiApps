.class Lcom/xiaomi/metoknlp/devicediscover/k;
.super Landroid/content/BroadcastReceiver;
.source "WifiCampStatistics.java"


# instance fields
.field final synthetic S:Lcom/xiaomi/metoknlp/devicediscover/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/metoknlp/devicediscover/f;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xiaomi/metoknlp/devicediscover/k;->S:Lcom/xiaomi/metoknlp/devicediscover/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/k;->S:Lcom/xiaomi/metoknlp/devicediscover/f;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/devicediscover/f;->a(Lcom/xiaomi/metoknlp/devicediscover/f;)Lcom/xiaomi/metoknlp/devicediscover/n;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/n;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/k;->S:Lcom/xiaomi/metoknlp/devicediscover/f;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/devicediscover/f;->a(Lcom/xiaomi/metoknlp/devicediscover/f;)Lcom/xiaomi/metoknlp/devicediscover/n;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/n;->removeMessages(I)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/k;->S:Lcom/xiaomi/metoknlp/devicediscover/f;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/devicediscover/f;->a(Lcom/xiaomi/metoknlp/devicediscover/f;)Lcom/xiaomi/metoknlp/devicediscover/n;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/n;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/k;->S:Lcom/xiaomi/metoknlp/devicediscover/f;

    invoke-static {v1}, Lcom/xiaomi/metoknlp/devicediscover/f;->a(Lcom/xiaomi/metoknlp/devicediscover/f;)Lcom/xiaomi/metoknlp/devicediscover/n;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/metoknlp/devicediscover/n;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 52
    :cond_1
    return-void
.end method
