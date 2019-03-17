.class Lcom/xiaomi/metoknlp/b/e;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityMonitor.java"


# instance fields
.field final synthetic af:Lcom/xiaomi/metoknlp/b/c;


# direct methods
.method private constructor <init>(Lcom/xiaomi/metoknlp/b/c;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/xiaomi/metoknlp/b/e;->af:Lcom/xiaomi/metoknlp/b/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/metoknlp/b/c;Lcom/xiaomi/metoknlp/b/b;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/xiaomi/metoknlp/b/e;-><init>(Lcom/xiaomi/metoknlp/b/c;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 105
    if-nez p2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    .line 113
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 115
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/xiaomi/metoknlp/b/e;->af:Lcom/xiaomi/metoknlp/b/c;

    invoke-static {v1}, Lcom/xiaomi/metoknlp/b/c;->b(Lcom/xiaomi/metoknlp/b/c;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_0

    .line 119
    iget-object v1, p0, Lcom/xiaomi/metoknlp/b/e;->af:Lcom/xiaomi/metoknlp/b/c;

    invoke-static {v1}, Lcom/xiaomi/metoknlp/b/c;->b(Lcom/xiaomi/metoknlp/b/c;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
